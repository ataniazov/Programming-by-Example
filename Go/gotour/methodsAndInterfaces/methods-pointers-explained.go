package methodsAndInterfaces

import (
	"fmt"
	"math"
)

type VertexFour struct {
	X, Y float64
}

func AbsTwo(v VertexFour) float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}

func Scale(v *VertexFour, f float64) {
	v.X = v.X * f
	v.Y = v.Y * f
}

func methodsPointersExplained() {
	v := VertexFour{3, 4}
	Scale(&v, 10)
	fmt.Println(AbsTwo(v))
}
