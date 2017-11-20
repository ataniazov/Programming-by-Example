package basics

import "fmt"

func slicesPointers() {
	names := [4]string{
		"John",
		"Paul",
		"George",
		"Ringo",
	}
	fmt.Println(names)

	a := names[0:2]
	b := names[1:3]
	fmt.Println(a, b)

	b[0] = "XXX"
	fmt.Println(a, b)
	fmt.Println(names)

	fmt.Printf("names: %6T %v\n", names, names)
	fmt.Printf("    a: %6T %v\n", a, a)
	fmt.Printf("    b: %6T %v\n", b, b)
}
