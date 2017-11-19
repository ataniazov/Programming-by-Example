package basics

import "fmt"

func structFields() {
	v := Vertex{1, 2}
	fmt.Printf("v.X: %v\n", v.X)
	fmt.Printf("v.Y: %v\n", v.Y)
	v.X = 4
	fmt.Printf("v.X: %v\n", v.X)
}
