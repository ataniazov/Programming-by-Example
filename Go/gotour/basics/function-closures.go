package basics

import (
	"fmt"
)

func adder() func(int) int {
	sum := 0
	fmt.Println("adder(): sum =", sum)
	return func(x int) int {
		fmt.Printf("func(%v): sum = %v\n", x, sum)
		sum += x
		return sum
	}
}

func adderNorm(x int) int {
	sum := 0
	sum += x
	return sum
}

func functionClosures() {
	pos, neg := adder(), adder()
	for i := 0; i < 10; i++ {
		fmt.Println(
			"pos(", i, ") =", pos(i), "\t",
			"neg(-2 *", i, ") =", neg(-2*i),
			// adderNorm(i),
			// adderNorm(-2*i),
		)
	}
}
