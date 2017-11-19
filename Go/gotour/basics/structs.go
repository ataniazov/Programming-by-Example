package basics

import (
	"fmt"
)

type Vertex struct {
	X int
	Y int
}

func structs() {
	fmt.Println(Vertex{1, 2})

	v := Vertex{3, 4}
	fmt.Printf("Vertex: %v %T\n", v, v)
}
