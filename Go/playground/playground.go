package main

import (
	"fmt"
)

func main() {
	fmt.Println("Welcome to the Playground!")
	defaultFirstSwitch()
	scopeVar()
	switchFallthrough()
	Data()
}

func defaultFirstSwitch() {
	fmt.Println("defaultFirstSwitch():")
	switch {
	default:
		fmt.Println("default")
	case false:
		fmt.Println("case false")
	case true:
		fmt.Println("case true")
	}
}

func switchFallthrough() {
	fmt.Println("switchFallthrough():")
	switch {
	case true:
		fmt.Println("case true")
		fallthrough
	case false:
		fmt.Println("case false")
		fallthrough
	default:
		fmt.Println("default")
	}
}

func scopeVar() {
	fmt.Println("scopeVar():")

	// Outer scope
	v := 42
	fmt.Printf("outer v: %v %v\n", v, &v)
	{
		fmt.Printf("outer in scope v: %v %v\n", v, &v)

		// Inner scope
		v := 13
		fmt.Printf("inner v: %v %v\n", v, &v)
	}
	fmt.Printf("outer v: %v %v\n", v, &v)
}

func Data() {
	i := new(int)
	fmt.Printf("i: %v, *i: %v i(T): %T\n", i, *i, i)

	m := make([]int, 1)
	fmt.Printf("m: %v, &m: %v m(T): %T\n", m, &m, m)
}
