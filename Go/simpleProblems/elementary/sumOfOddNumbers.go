package main

import "fmt"

// Write a program that asks the user for a number n and prints the sum of the odd numbers 1 to n
func main() {
	fmt.Print("Enter your number: ")
	var num int
	fmt.Scanln(&num)
	fmt.Print("Sum of odd numbers from 1 to ", num, " is ", sumOddFromOneToNumber(num), "\n")
}

func sumOddFromOneToNumber(num int) int {
	var sum int
	for i := 1; i <= num; i++ {
		if !isEven(i) {
			sum += i
		}
	}
	return sum
}

func isEven(num int) bool {
	return num%2 == 0
}
