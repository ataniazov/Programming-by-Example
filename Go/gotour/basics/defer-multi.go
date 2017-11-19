package basics

import (
	"fmt"
)

func returnValue() (i int) {
	defer func() { i++ }()
	return 1
}

func deferredCall(i int) int {
	fmt.Printf("%v. function call pushed onto a stack\n", i)
	return i
}

func deferMulti() {
	fmt.Println("counting")

	for i := 0; i < 10; i++ {
		// defer fmt.Println(i)
		defer fmt.Printf("%v. function call evaluated\n", deferredCall(i))
	}

	fmt.Println("done")

	fmt.Println("returnValue() call return value:", returnValue())
}
