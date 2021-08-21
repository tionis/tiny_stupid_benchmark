package main

import (
	"fmt"
	"math/big"
	"time"
)

func main() {
	time1 := time.Now()
	fmt.Println(sum(1000000000).String())
	time2 := time.Now()
	fmt.Println(time2.Sub(time1))
}

// Calculates the sum of all numbers from 1 to x
func sum(x int64) *big.Int {
	var i int64
	var ret big.Int
	for i = 1; i <= x; i++ {
		ret.Add(&ret, big.NewInt(i))
	}
	return &ret
}
