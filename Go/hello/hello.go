package main

import "fmt"
import "github.com/ataniazov/Programming-by-Example/Go/stringutil"

func main() {
	fmt.Printf("Hello, world.\n")
	fmt.Printf(stringutil.Reverse("!oG ,olleH\n"))
	fmt.Println()
	fmt.Printf(stringutil.Reverse("Привет, мир!"))
	fmt.Println()
}
