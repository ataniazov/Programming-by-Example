package basics

import (
	"fmt"
	"math"
)

func powTwo(x, n, lim float64) float64 {
	if v := math.Pow(x, n); v < lim {
		return v
	} else {
		fmt.Printf("%g >= %g\n", v, lim)
	}
	// can't use v here, though
	return lim
}

func ifElseTest(b bool) {
	if fmt.Print(b, " is evaluated "); b {
		fmt.Println("inside if")
	} else {
		fmt.Println("inside else")
	}
}

func ifAndElse() {
	fmt.Println(
		powTwo(3, 2, 10),
		powTwo(3, 3, 20),
	)
	ifElseTest(true)
	ifElseTest(false)
}
