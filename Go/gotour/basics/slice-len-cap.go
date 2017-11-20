package basics

import (
	"fmt"
)

func sliceLenCap() {
	s := []int{2, 3, 5, 7, 11, 13}
	printSlice(s)

	// Slice the slice to give it zero length.
	s = s[:0]
	printSlice(s)

	// Extend its length.
	s = s[:4]
	printSlice(s)

	// Drop its first two values.
	s = s[2:]
	printSlice(s)

	// Change slice beyond its capacity
	s = s[:cap(s)]
	printSlice(s)
	s = s[4:]
	printSlice(s)

	println(s)
	if s == nil {
		fmt.Println("nil!")
	}
}

func printSlice(s []int) {
	fmt.Printf("%T len=%d cap=%d %v\n", s, len(s), cap(s), s)
}
