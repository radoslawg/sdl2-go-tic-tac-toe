# Tic tac toe implemented in Go with SDL2

This is mainly an exercise in Devcontainers, devpod, Go and its bindings to the SDL2 library.

## Devpod
I use [DevPod](https://devpod.sh/)

Run it with:
```sh 
devpod up --ide none .
```

It should create the container with *NeoVim* installed and configuration for *Go* already prepared. It uses *Homebrew* to install needed applications.
On **Linux** you can use:

```sh
devpod ssh
```
However, on **Windows** it seems not to work and I have to ssh into the container.

# Resources

- [SDL2 in Go for Beginners - Youtube](https://www.youtube.com/watch?v=qgPR8sWcnlo)
- [SDL2 bindings - Github](https://github.com/veandco/go-sdl2)
- [SDL2 bindings documentation](https://pkg.go.dev/github.com/veandco/go-sdl2)
- [SDL2 original documentation](https://wiki.libsdl.org/SDL2/FrontPage)
