package basics

import (
	"fmt"
)

func forIsGosWhile() {
	sum := 1
	for sum < 1000 {
		sum += sum
	}
	fmt.Println(sum)
}
