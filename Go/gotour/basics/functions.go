package basics

import (
	"fmt"
)

func add(x int, y int) int {
	return x + y
}

func functions() {
	fmt.Println(add(42, 13))
}
