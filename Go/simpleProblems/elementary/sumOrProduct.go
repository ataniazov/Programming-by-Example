package main

import "fmt"

/*
Write a program that asks the user for a number n
and gives them the possibility to choose between
computing the sum and computing the product of 1,…,n.
*/
func main() {
	menu()
}

// Main menu
func menu() {
	var choise int
	for {
		fmt.Println("[1] Sum")
		fmt.Println("[2] Product")
		fmt.Println("[0] Quit")
		fmt.Print("Your choise: ")
		fmt.Scan(&choise)
		if choise == 1 {
			sum()
		} else if choise == 2 {
			product()
		} else if choise == 0 {
			fmt.Println("Bye bye!")
			break
		} else {
			fmt.Println("Wrong choise!")
		}
	}
}

func sum(){
	fmt.Print("Enter your number: ")
	var num int
	fmt.Scanln(&num)
	fmt.Print("Sum of numbers from 1 to ", num, " is ", sumFromOne(num), "\n")
}

func product(){
	fmt.Print("Enter your number: ")
	var num int
	fmt.Scanln(&num)
	fmt.Print("Product of numbers from 1 to ", num, " is ", fac(num), "\n")
}

// product from 1 to n (factorial)
func fac(n int) int {
	if n == 1 {
		return 1
	} else {
		return n * fac(n-1)
	}
}

// sum from 1 to n
func sumFromOne(num int) int {
	return num * (num + 1) / 2
}