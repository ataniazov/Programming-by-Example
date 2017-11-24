package methodsAndInterfaces

import (
	"fmt"
)

func typeAssertions() {
	var i interface{} = "hello"

	s := i.(string)
	fmt.Println(s)

	s, ok := i.(string)
	fmt.Println(s, ok)

	f, ok := i.(float64)
	fmt.Println(f, ok)

	f = i.(float64) // panic
	fmt.Println(f)

	fmt.Println("(value, type):")
	describeTwo(i)
	describeTwo(s)
	describeTwo(f)
	describeTwo(ok)
}
