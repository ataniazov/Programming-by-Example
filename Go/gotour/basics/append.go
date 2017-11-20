package basics

import (
	"fmt"
)

func tourAppend() {
	var s []int
	printSliceThree(s)

	// append works on nil slices.
	s = append(s, 0)
	printSliceThree(s)

	// The slice grows as needed.
	s = append(s, 1)
	printSliceThree(s)

	// We can add more than one element at a time.
	s = append(s, 2, 3, 4)
	printSliceThree(s)
}

func printSliceThree(s []int) {
	println("address", s)
	fmt.Printf("len=%d cap=%d %v\n", len(s), cap(s), s)
}
