package methodsAndInterfaces

import (
	"fmt"
	"math"
)

type Abser interface {
	Abs() float64
}

func interfaces() {
	var a Abser
	f := MyFloat(-math.Sqrt2)
	v := VertexTwo{3, 4}

	a = f  // a MyFloat implements Abser
	a = &v // a *Vertex implements Abser

	// In the following line, v is a Vertex (not *Vertex)
	// and does NOT implement Abser.
	// a = v

	fmt.Println(a.Abs())
	fmt.Printf("a: %#T %#v\n", a, a)
	fmt.Printf("a.Abs(): %#T %#v\n", a.Abs, a.Abs())
}

// type MyFloat float64

// func (f MyFloat) Abs() float64 {
// 	if f < 0 {
// 		return float64(-f)
// 	}
// 	return float64(f)
// }

type VertexTwo struct {
	X, Y float64
}

func (v *VertexTwo) Abs() float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}
