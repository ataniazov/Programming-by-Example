package methodsAndInterfaces

import (
	"fmt"
	"math"
)

type VertexThree struct {
	X, Y float64
}

func (v VertexThree) Abs() float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}

func (v *VertexThree) Scale(f float64) {
	v.X = v.X * f
	v.Y = v.Y * f
}

func methodsPointers() {
	v := VertexThree{3, 4}
	v.Scale(10)
	fmt.Println(v.Abs())
}
