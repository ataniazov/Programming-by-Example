package main

import (
	"fmt"
	"math"
)

/*
 * Write a program that computes
 * 4\cdot \sum_{k=1}^{10^6} \frac{(-1)^{k+1}}{2k-1} = 4\cdot(1-1/3+1/5-1/7+1/9-1/11\ldots).
 */
func main() {

	var sum float64
	for k := 1; k <= 1e6; k++ {
		sum = math.Pow(-1, float64(k+1)) / float64(2*k-1)
	}

	sum *= 4
	fmt.Printf("%f", sum)
}
