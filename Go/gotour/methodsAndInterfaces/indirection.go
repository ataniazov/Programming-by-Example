package methodsAndInterfaces

import (
	"fmt"
)

// type Vertex struct {
// 	X, Y float64
// }

// func (v *Vertex) Scale(f float64) {
// 	v.X = v.X * f
// 	v.Y = v.Y * f
// }

func ScaleFunc(v *Vertex, f float64) {
	v.X = v.X * f
	v.Y = v.Y * f
}

func indirection() {
	v := Vertex{3, 4}
	v.Scale(2)
	ScaleFunc(&v, 10)

	p := &Vertex{4, 3}
	p.Scale(3)
	ScaleFunc(p, 8)

	fmt.Println(v, p)

	var z = Vertex{5, 3}
	pz := &z
	fmt.Println("z:", z)
	fmt.Println("pz:", pz)

	// through value scale
	z.Scale(3)
	fmt.Println("After z scale:")
	fmt.Println("z:", z)
	fmt.Println("pz:", pz)

	// through pointer scale
	pz.Scale(2)
	fmt.Println("After pz scale:")
	fmt.Println("z:", z)
	fmt.Println("pz:", pz)

	// call by address
	(&z).Scale(2)
	fmt.Println("After &z scale:")
	fmt.Println("z:", z)
	fmt.Println("pz:", pz)
}
