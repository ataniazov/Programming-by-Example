package basics

import (
	"fmt"
)

func sliceLiterals() {
	p := [6]int{2, 3, 5, 7, 11, 13} // array literal
	q := []int{2, 3, 5, 7, 11, 13}  // slice literal

	fmt.Println("p:", p)
	fmt.Println("q:", q)

	fmt.Printf("p: %6T %v\n", p, p)
	fmt.Printf("q: %6T %v\n", q, q)

	r := []bool{true, false, true, true, false, true}
	fmt.Println(r)

	s := []struct {
		i int
		b bool
	}{
		{2, true},
		{3, false},
		{5, true},
		{7, true},
		{11, false},
		{13, true},
	}

	fmt.Println(s)

	fmt.Printf("s: %6T %v\n", s, s)
}
