#!/bin/sh

go install -v github.com/incu6us/goimports-reviser/v3@latest
go install -v mvdan.cc/gofumpt@latest
go install -v github.com/segmentio/golines@latest
go install -v github.com/go-delve/delve/cmd/dlv@latest

cp -r ./.config ~/
