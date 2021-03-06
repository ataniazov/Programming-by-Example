package basics

import (
	"fmt"
	"math"
)

func compute(fn func(float64, float64) float64) float64 {
	return fn(3, 4)
}

func functionValues() {
	hypot := func(x, y float64) float64 {
		return math.Sqrt(x*x + y*y)
	}

	fmt.Println(hypot(5, 12))

	fmt.Printf("hypot:\ntype: %T\nvalue: %v\naddress: %v\n", hypot, hypot, &hypot)
	fmt.Printf("compute:\ntype: %T\naddress: %v\n", compute, compute)

	fmt.Println("compute(hypot):", compute(hypot))
	fmt.Println("compute(Pow):", compute(math.Pow))
}
