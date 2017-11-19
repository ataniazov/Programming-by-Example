package basics

import (
	"fmt"
)

func structPointers() {
	v := Vertex{1, 2}
	p := &v
	p.X = 1e9
	fmt.Println(v)

	(*p).Y += 40 // cumbersome notation
	fmt.Println(v)
}
