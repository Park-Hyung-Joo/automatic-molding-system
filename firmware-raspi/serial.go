package main

import (
	"bufio"
	"context"
	"io"
	"strconv"
	"strings"

	"github.com/jacobsa/go-serial/serial"
	"github.com/sirupsen/logrus"
)

type (
	message []string
)

// open serial port
func openPort(portName string, portBaud int) (io.ReadWriteCloser, error) {
	options := serial.OpenOptions{
		PortName:        portName,
		BaudRate:        uint(portBaud),
		DataBits:        8,
		StopBits:        1,
		MinimumReadSize: 1,
	}
	port, err := serial.Open(options)
	if err != nil {
		return nil, err
	}
	Logger.WithFields(logrus.Fields{
		"path": options.PortName,
		"baud": options.BaudRate,
	}).Infoln("serial port opened")
	return port, nil
}

// start to listen port
func listenPort(ctx context.Context, stream io.ReadWriteCloser, messageQueue chan message) {
	var (
		message message
		rw      *bufio.ReadWriter = bufio.NewReadWriter(bufio.NewReader(io.Reader(stream)), bufio.NewWriter(io.Writer(stream)))
		line    string
	)
	for {
		select {
		case <-ctx.Done():
			Logger.Infoln("stop serial listening")
			return
		default:
			curLine, isPrefix, err := rw.ReadLine()
			if err != nil {
				Logger.WithError(err).Errorln("fail to read serial line")
				continue
			}
			if isPrefix {
				line += string(curLine)
			} else {
				line = string(curLine)
			}
			Logger.Debugf("read line : %s\n", line)
			message = strings.Split(line, ",")
			messageQueue <- message
		}
	}
}

// process serial incoming data
func processPort(messageQueue chan message) {
	for {
		msg := <-messageQueue
		switch msg[0] {
		case "TEMP":
			TemparatureCount = len(msg) - 1
			for i := 1; i < len(msg); i++ {
				f, err := strconv.ParseFloat(msg[i], 32)
				if err != nil {
					Logger.WithError(err).Errorln("fail to parse temperature message")
					Temperature[i-1] = 999
					continue
				}
				Temperature[i-1] = float32(f)
			}
		case "OUT":
			OutputCount = len(msg) - 1
			for i := 1; i < len(msg); i++ {
				if ii, err := strconv.Atoi(msg[i]); err != nil {
					continue
				} else {
					Output[i-1] = ii
				}
			}
		case "MODE":
			ModeCount = len(msg) - 1
			for i := 1; i < len(msg); i++ {
				if ii, err := strconv.Atoi(msg[i]); err != nil {
					continue
				} else {
					Mode[i-1] = ii
				}
			}
		case "TARGETTEMP":
			TargetTemperatureCount = len(msg) - 1
			for i := 1; i < len(msg); i++ {
				f, err := strconv.ParseFloat(msg[i], 32)
				if err != nil {
					Logger.WithError(err).Errorln("fail to parse temperature message")
					TargetTemperature[i-1] = 999
					continue
				}
				TargetTemperature[i-1] = float32(f)
			}
		}
	}
}
