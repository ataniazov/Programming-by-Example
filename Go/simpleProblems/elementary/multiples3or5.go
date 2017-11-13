package main

import "fmt"

/*
Modify the previous program such that only multiples of
three or five are considered in the sum,
e.g. 3, 5, 6, 9, 10, 12, 15 for n=17
*/
func main() {
	fmt.Print("Enter your number: ")
	var num int
	fmt.Scanln(&num)

	if num >= 3 {
		fmt.Println("Multiple of three or five:")
		mult := find3or5mult(num)
		for _, val := range mult {
			fmt.Println(val)
		}
	} else {
		fmt.Println("Wrong input!")
	}
}

func find3or5mult(num int) (mult []int) {
	for i := 3; i <= num; i++ {
		if (i%3 == 0) || (i%5 == 0) {
			mult = append(mult, i)
		}
	}
	return
}
