package main

import (
	"context"
	"flag"
	"io"
	"math"
	"math/rand"
	"net/http"

	"github.com/go-playground/validator/v10"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
	"github.com/sirupsen/logrus"
)

type (
	CustomValidator struct {
		validator *validator.Validate
	}
)

// global variable declaration
var (
	Logger                                                           *logrus.Logger = logrus.New()
	Temperature                                                      []float32      = make([]float32, 32)
	Output                                                           []int          = make([]int, 32)
	Mode                                                             []int          = make([]int, 32)
	TargetTemperature                                                []float32      = make([]float32, 32)
	TemparatureCount, OutputCount, ModeCount, TargetTemperatureCount int
	PortContext                                                      context.Context
	PortContextCancel                                                context.CancelFunc
)

// model validator
func (cv *CustomValidator) Validate(i interface{}) error {
	if err := cv.validator.Struct(i); err != nil {
		return echo.NewHTTPError(http.StatusInternalServerError, err.Error())
	}
	return nil
}

func main() {
	// flag variable definition
	var (
		portBaud      int
		listenAddress string
		port          io.ReadWriteCloser
		portOpened    bool         = false
		messageQueue  chan message = make(chan message, 20)
		isDebug       bool
	)
	flag.IntVar(&portBaud, "sbaud", 115200, "(optional) baudrate of serial port")
	flag.StringVar(&listenAddress, "listen", ":8080", "(optional) listen address of web api server")
	flag.BoolVar(&isDebug, "debug", false, "define print debud log")
	flag.Parse()

	// echo and route definition
	e := echo.New()
	//elogrus.Attach(e)
	e.Validator = &CustomValidator{validator: validator.New()}

	if isDebug {
		Logger.SetLevel(logrus.DebugLevel)
	}

	e.Use(middleware.CORS())

	e.POST("/port", func(c echo.Context) error {
		req := openPortRequest{}
		if err := c.Bind(&req); err != nil {
			return c.JSON(http.StatusBadRequest, errorResponse{Message: "bind_fail", Detail: err.Error()})
		}
		if err := c.Validate(req); err != nil {
			return c.JSON(http.StatusBadRequest, errorResponse{Message: "validate_fail", Detail: err.Error()})
		}

		if req.Close {
			if portOpened {
				if err := port.Close(); err != nil {
					return c.NoContent(http.StatusInternalServerError)
				}
				PortContextCancel()
				portOpened = false
				return c.NoContent(http.StatusOK)
			} else {
				return c.NoContent(http.StatusBadRequest)
			}
		}

		var err error
		if req.PortName == "test" {
			port = testRWC{}
		} else {
			port, err = openPort(req.PortName, req.PortBaud)
		}
		if err != nil {
			return c.JSON(http.StatusInternalServerError, errorResponse{Message: "port_open_fail", Detail: err.Error()})
		}

		PortContext, PortContextCancel = context.WithCancel(context.Background())
		go listenPort(PortContext, port, messageQueue)
		go processPort(messageQueue)

		portOpened = true
		return c.NoContent(http.StatusOK)
	})
	e.GET("/port", func(c echo.Context) error {
		return c.JSON(http.StatusOK, statusPortResponse{Opened: portOpened})
	})
	e.GET("/status", func(c echo.Context) error {
		return c.JSON(http.StatusOK, statusResponse{
			Temperature:       Temperature[0:TemparatureCount],
			Output:            Output[0:OutputCount],
			TargetTemperature: TargetTemperature[0:TargetTemperatureCount],
			Mode:              Mode[0:ModeCount],
		})
	})
	e.GET("/status_test", func(c echo.Context) error {

		var (
			temperature                                                      []float32 = make([]float32, 32)
			output                                                           []int     = make([]int, 32)
			mode                                                             []int     = make([]int, 32)
			targetTemperature                                                []float32 = make([]float32, 32)
			temparatureCount, outputCount, modeCount, targetTemperatureCount int
		)
		temparatureCount = 18
		outputCount = 18
		modeCount = 18
		targetTemperatureCount = 18
		for i := 0; i < temparatureCount; i++ {
			temperature[i] = float32(math.Round(rand.Float64()*250*4) / 4.0)
		}
		for i := 0; i < targetTemperatureCount; i++ {
			targetTemperature[i] = 175
		}
		for i := 0; i < outputCount; i++ {
			if temperature[i] < targetTemperature[i] {
				output[i] = 10
			} else {
				output[i] = 0
			}
		}
		for i := 0; i < modeCount; i++ {
			mode[i] = 1
		}
		return c.JSON(http.StatusOK, statusResponse{
			Temperature:       temperature[0:temparatureCount],
			Output:            output[0:outputCount],
			TargetTemperature: targetTemperature[0:targetTemperatureCount],
			Mode:              mode[0:modeCount],
		})
	})
	e.POST("/control", func(c echo.Context) error {
		req := controlRequest{}
		if err := c.Bind(&req); err != nil {
			return c.JSON(http.StatusBadRequest, errorResponse{Message: "bind_fail", Detail: err.Error()})
		}
		if err := c.Validate(req); err != nil {
			return c.JSON(http.StatusBadRequest, errorResponse{Message: "validate_fail", Detail: err.Error()})
		}

		b := []byte{}
		switch req.Kind {
		case "heater":
			b = append(b, 1)
			b = append(b, byte(req.Data[0]))
			b = append(b, byte(req.Data[1]))
			b = append(b, 255)
		case "heater_range":
			b = append(b, 2)
			b = append(b, byte(req.Data[0]))
			b = append(b, byte(req.Data[1]))
			b = append(b, byte(req.Data[2]))
			b = append(b, 255)
		case "motor":
			b = append(b, 3)
			b = append(b, byte(req.Data[0]))
			b = append(b, 0)
			b = append(b, 255)
		case "mode":
			b = append(b, 4)
			b = append(b, byte(req.Data[0]))
			b = append(b, byte(req.Data[1]))
			b = append(b, 255)
		case "mode_range":
			b = append(b, 5)
			b = append(b, byte(req.Data[0]))
			b = append(b, byte(req.Data[1]))
			b = append(b, byte(req.Data[2]))
			b = append(b, 255)
		case "target_temp":
			b = append(b, 6)
			b = append(b, byte(req.Data[0]))
			b = append(b, byte(req.Data[1]), byte(req.Data[1]>>8))
			b = append(b, 255)
		case "target_temp_range":
			b = append(b, 7)
			b = append(b, byte(req.Data[0]))
			b = append(b, byte(req.Data[1]))
			b = append(b, byte(req.Data[2]), byte(req.Data[2]>>8))
			b = append(b, 255)
		default:
			return c.JSON(http.StatusBadRequest, errorResponse{Message: "invalid_kind"})
		}
		if _, err := port.Write(b); err != nil {
			return c.JSON(http.StatusBadRequest, errorResponse{Message: "write_fail", Detail: err.Error()})
		}
		Logger.Debugf("write line : %v\n", b)
		return c.NoContent(http.StatusOK)
	})
	e.Static("/", "frontend")

	e.Logger.Fatal(e.Start(listenAddress))
}
