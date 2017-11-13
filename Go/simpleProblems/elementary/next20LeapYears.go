package main

import (
	"fmt"
	"time"
)

// Write a program that prints the next 20 leap years.
func main() {
	currentYear := time.Now().Year()
	fmt.Println("Current year is", currentYear)

	var leapYears []int

	for i := currentYear; ; i++ {
		if isYearLeap(i) {
			leapYears = append(leapYears, i)
			if len(leapYears) == 20 {
				break
			}
		}
	}

	fmt.Println("Next 20 leap years:")
	fmt.Println(leapYears)
}

// Leap year check
func isYearLeap(year int) bool {
	if !(year%4 == 0) {
		return false
	} else if !(year%100 == 0) {
		return true
	} else if !(year%400 == 0) {
		return false
	} else {
		return true
	}
}
