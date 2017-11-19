package basics

import (
	"fmt"
)

type VertexTwo struct {
	X, Y int
}

var (
	v1 = VertexTwo{1, 2}  // has type VertexTwo
	v2 = VertexTwo{X: 1}  // Y:0 is implicit
	v3 = VertexTwo{}      // X:0 and Y:0 are implicit
	p  = &VertexTwo{1, 2} // has type *VertexTwo
)

func structLiterals() {
	fmt.Println(v1, p, v2, v3)

	fmt.Printf("v1: %6T %v\n", v1, v1)
	fmt.Printf("v2: %6T %v\n", v2, v2)
	fmt.Printf("v3: %6T %v\n", v3, v3)
	fmt.Printf("p: %6T %v\n", p, p)
	fmt.Printf("*p: %6T %v\n", *p, *p)

	p.X = 3
	p.Y = 4

	(*p).X *= 2
	fmt.Printf("*p: %6T %v\n", *p, *p)

	p2 := &VertexTwo{Y: 5, X: 2}
	fmt.Printf("p2: %6T %v\n", p2, p2)
	fmt.Printf("*p2: %6T %v\n", *p2, *p2)
}
