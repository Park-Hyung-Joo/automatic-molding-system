package main

type (
	testRWC struct {
	}
)

func (t testRWC) Read(p []byte) (n int, err error) {
	copy(p, []byte("TEMP,1.0,2.0,3.0,4.0\nOUT,ON,OFF,ON,OFF\n"))
	return 39, nil
}

func (t testRWC) Write(p []byte) (n int, err error) {
	Logger.Printf("testRWC write : %v", p)
	return len(p), nil
}

func (t testRWC) Close() error {
	return nil
}
