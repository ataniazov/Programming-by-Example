package basics

import (
	"fmt"
)

func makingSlices() {
	a := make([]int, 5) // len(a)=5
	printSliceTwo("a", a)

	b := make([]int, 0, 5) // len(b)=0, cap(b)=5
	printSliceTwo("b", b)

	// b = b[:cap(b)] // len(b)=5, cap(b)=5
	// printSliceTwo("b", b)
	// b = b[1:]      // len(b)=4, cap(b)=4

	c := b[:2]
	printSliceTwo("c", c)

	d := c[2:5]
	printSliceTwo("d", d)
}

func printSliceTwo(s string, x []int) {
	fmt.Printf("%s len=%d cap=%d %v\n", s, len(x), cap(x), x)
}
