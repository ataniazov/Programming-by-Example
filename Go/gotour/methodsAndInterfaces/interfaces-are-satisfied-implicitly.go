package methodsAndInterfaces

import (
	"fmt"
)

type I interface {
	M()
}

type T struct {
	S string
}

// This method means type T implements the interface I,
// but we don't need to explicitly declare that it does so.
func (t T) M() {
	fmt.Println(t.S)
}

func interfacesAreSatisfiedImplicitly() {
	var i I = T{"hello"}
	i.M()

	// var u = U{"world"}
	// u.M()

}

// type U struct {
// 	R string
// }

// func (u *U) M() {
// 	fmt.Println(u.R)
// }
