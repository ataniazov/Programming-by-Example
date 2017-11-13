package main

import "fmt"

// Write a program that prints a multiplication table for numbers up to 12.
func main() {
	fmt.Print("Enter number from 1 to 12: ")
	var num int
	fmt.Scanln(&num)
	if num >= 1 && num <= 12 {
		multiTable(num)
	} else {
		fmt.Println("Sorry, wrong input!")
	}
}

func multiTable(num int) {
	for i := 1; i <= num; i++ {
		for j := 1; j <= num; j++ {
			fmt.Printf("%4d", i*j)
		}
		fmt.Println()
	}
}
