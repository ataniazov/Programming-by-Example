package main

import "fmt"

// Write a program that asks the user for their name and greets them with their name.
func main() {
	fmt.Print("What is your name? ")
	var name string
	fmt.Scanln(&name)
	fmt.Print("Hi ", name, "! Nice to meet you!\n")
}
