#!/bin/sh
echo "Go"
echo "single-threaded:"
go run go-simple/main.go
echo "multi-threaded (theoretically suboptimal):"
go run go-routines/main.go
echo

echo "Elixir"
echo "simple"
mix simple
echo "better"
mix better
