package main

import "fmt"

// Modify the previous program such that only the users Alice and Bob are greeted with their names.
func main() {
	fmt.Print("What is your name? ")
	var name string
	fmt.Scanln(&name)
	if name == "Alice" || name == "alice" || name == "Bob" || name == "bob" {
		fmt.Print("Hi ", name, "!\n")
	} else {
		fmt.Print("Hello ", name, ". Nice to meet you!\n")
	}
}
