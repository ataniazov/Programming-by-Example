package methodsAndInterfaces

import (
	"fmt"
	"math"
)

type VertexTwo struct {
	X, Y float64
}

func Abs(v VertexTwo) float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}

func methodsFuncs() {
	v := VertexTwo{3, 4}
	fmt.Println(Abs(v))
}
