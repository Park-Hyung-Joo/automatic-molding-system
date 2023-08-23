package main

// http response and request model definition
type (
	openPortRequest struct {
		Close    bool   `json:"close"`
		PortName string `json:"port_name"`
		PortBaud int    `json:"port_baud"`
	}

	statusPortResponse struct {
		Opened bool `json:"open"`
	}

	statusResponse struct {
		Temperature       []float32 `json:"temperature"`
		Output            []int     `json:"output"`
		TargetTemperature []float32 `json:"target_temperature"`
		Mode              []int     `json:"mode"`
	}

	controlRequest struct {
		Kind string `json:"kind"`
		Data []int  `json:"data"`
	}

	errorResponse struct {
		Message string `json:"msg"`
		Detail  string `json:"detail"`
	}
)
