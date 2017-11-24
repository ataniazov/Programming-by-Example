package methodsAndInterfaces

import (
	"fmt"
)

func emptyInterface() {
	var i interface{}
	describeTwo(i)

	i = 42
	describeTwo(i)

	i = "hello"
	describeTwo(i)
}

func describeTwo(i interface{}) {
	fmt.Printf("(%v, %T)\n", i, i)
	fmt.Printf("(%#v, %#T)\n", i, i)
}
