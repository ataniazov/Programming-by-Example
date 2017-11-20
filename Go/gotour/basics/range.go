package basics

import (
	"fmt"
)

var power = []int{1, 2, 4, 8, 16, 32, 64, 128}

func tourRange() {
	for i, v := range power {
		fmt.Printf("2**%d = %d\n", i, v)
	}
}
