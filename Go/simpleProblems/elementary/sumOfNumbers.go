package main

import "fmt"

// Write a program that asks the user for a number n and prints the sum of the numbers 1 to n
func main() {
	fmt.Print("Enter your number: ")
	var num int
	fmt.Scanln(&num)
	fmt.Print("Sum of 1 to ", num, " is ", SumFromOne(num), "\n")
}

func sumFromOneToNumber(num int) int {
	var sum int
	for i := 1; i <= num; i++ {
		sum += i
	}
	return sum
}

func sumFromOne(num int) int {
	return num * (num + 1) / 2
}
