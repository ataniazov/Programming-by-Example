package main

import (
	"fmt"
	"math"
)

/*
Write a program that prints all prime numbers. (Note: if your programming
language does not support arbitrary size numbers, printing all primes up
to the largest number you can easily represent is fine too.)
*/
func main() {
	fmt.Print("Enter number: ")
	var num int
	fmt.Scan(&num)
	if num >= 1 {
		findPrimes(num)
	} else {
		fmt.Print("Sorry, wrong input!")
	}
}

func findPrimes(num int) {
	for i := 1; i <= num; i++ {
		if isPrime(i) {
			fmt.Println("Number", i, "is prime!")
		}
	}
}

func isPrime(num int) bool {
	for i := 2; float64(i) <= math.Sqrt(float64(num)); i++ {
		if num%i == 0 {
			return false
		}
	}
	return true
}
