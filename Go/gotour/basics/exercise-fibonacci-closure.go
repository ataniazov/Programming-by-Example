package basics

import (
	"fmt"
)

// fibonacci is a function that returns
// a function that returns an int.
func fibonacci() func() int {
	fst, snd := 0, 1
	return func() int {
		cur := fst
		fst, snd = snd, fst
		snd += fst
		return cur
	}
}

func exerciseFibonacciClosure() {
	f := fibonacci()
	for i := 0; i < 10; i++ {
		fmt.Println(f())
	}
}
