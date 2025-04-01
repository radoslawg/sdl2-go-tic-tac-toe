package main

import (
	"fmt"
	"os"

	"github.com/veandco/go-sdl2/sdl"
)

const (
	windowWidth  = 800
	windowHeight = 600
	windowTitle  = "Tic Tac Toe"
)

func initSDL() error {
	var err error
	var sdlFlags uint32 = sdl.INIT_EVERYTHING

	if err = sdl.Init(sdlFlags); err != nil {
		return fmt.Errorf("Error initializing SDL2: %v", err)
	}
	return err
}

func closeSDL() {
	sdl.Quit()
}

func main() {
	var err error

	defer closeSDL()
	if err = initSDL(); err != nil {
		fmt.Fprintf(os.Stderr, "%v\n", err)
		return
	}
}
