package main

import (
	"fmt"
	"math/big"
	"time"
)

const divideFactor = 10

func main() {
	time1 := time.Now()
	fmt.Println(sum(1000000000).String())
	time2 := time.Now()
	fmt.Println(time2.Sub(time1))
}

// Calculates the sum of all numbers from 1 to x
func sum(x int64) *big.Int {
	factor := x / divideFactor
	var ret big.Int
	c := make(chan big.Int)
	var i int64
	for i = 1; i <= divideFactor; i++ {
		go sumInner((i-1)*factor, i*factor, c)
	}
	i = 0
	for i = 1; i <= divideFactor; i++ {
		new := <-c
		ret.Add(&ret, &new)
	}
	return &ret
}

func sumInner(start, end int64, c chan big.Int) {
	var ret big.Int
	var i int64
	for i = start; i <= end; i++ {
		ret.Add(&ret, big.NewInt(i))
	}
	c <- ret
}
