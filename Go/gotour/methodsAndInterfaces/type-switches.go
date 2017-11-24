package methodsAndInterfaces

import (
	"fmt"
)

func do(i interface{}) {
	switch v := i.(type) {
	case int:
		fmt.Printf("Twice %v is %v\n", v, v*2)
		describeTwo(v)
	case string:
		fmt.Printf("%q is %v bytes long\n", v, len(v))
		describeTwo(v)
	default:
		fmt.Printf("I don't know about type %T!\n", v)
		describeTwo(v)
	}
}

func typeSwitches() {
	do(21)
	do("hello")
	do(true)
}
