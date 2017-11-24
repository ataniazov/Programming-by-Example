package methodsAndInterfaces

import (
	"fmt"
)

// type I interface {
// 	M()
// }

type TTwo struct {
	S string
}

func (t *TTwo) M() {
	if t == nil {
		fmt.Println("<nil>")
		return
	}
	fmt.Println(t.S)
}

func interfaceValuesWithNil() {
	var i I

	var t *TTwo
	i = t
	describe(i)
	i.M()
}

// func describe(i I) {
// 	fmt.Printf("(%v, %T)\n", i, i)
// }
