package basics

import (
	"fmt"
)

func nilSlices() {
	var s []int
	fmt.Println(s, len(s), cap(s))
	if s == nil {
		println("nil address:", s)
		fmt.Println("nil!")
	}
}
