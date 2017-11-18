package basics

import (
	"fmt"
	"math"
)

func Sqrt(x float64) float64 {
	z := float64(1)
	for i := 0; i < 10; i++ {
		z -= (z*z - x) / (2 * z)
	}
	return z
}

// compute sqare root with newton method
func betterSqrt(x float64) float64 {
	if x == 0 {
		return 0
	}
	z := float64(1)
	error := 1e-14 // min possible error
	for math.Abs(z*z-x) >= error {
		z -= (z*z - x) / (2 * z)
	}
	return z
}

func diffSqrt(x float64) {
	fmt.Printf("%v : %v %v %v\n", x, Sqrt(x), betterSqrt(x), math.Sqrt(x))
}

func exerciseLoopsAndFunctions() {
	fmt.Println(Sqrt(2))

	for i := 0; i <= 10; i++ {
		diffSqrt(float64(i))
	}
}
