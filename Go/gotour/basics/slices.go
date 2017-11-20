package basics

import "fmt"

func slices() {
	primes := [6]int{2, 3, 5, 7, 11, 13}

	var s []int = primes[1:4]
	fmt.Println(s)

	fmt.Printf("primes: %6T %v\n", primes, primes)
	fmt.Printf("   s[]: %6T %v\n", s, s)
}
