package main

import (
	"fmt"
	"math/rand"
	"time"
)

/*
Write a guessing game where the user has to guess a secret number.
After every guess the program tells the user whether their number
was too large or too small. At the end the number of tries needed
should be printed. I counts only as one try if they input the same
number multiple times consecutively.
*/
func main() {
	menu()
}

// Main menu
func menu() {
	var choise int
	for {
		fmt.Println("[1] Start Game")
		fmt.Println("[0] Quit Game")
		fmt.Print("Your choise: ")
		fmt.Scan(&choise)
		if choise == 1 {
			game()
		} else if choise == 0 {
			fmt.Println("Bye bye!")
			break
		} else {
			fmt.Println("Wrong choise!")
		}
	}
}

// From min to max random number generator
func randomInt(min, max int) int {
	rand.Seed(time.Now().Unix())
	return min + rand.Intn(max-min)
}

// Guess a number game
func game() {
	secret := randomInt(1, 100)
	var guess int
	for i := 1; i <= 6; i++ {
		fmt.Print("Guess a number: ")
		fmt.Scan(&guess)
		if secret > guess {
			fmt.Println("Too small!")
		} else if secret < guess {
			fmt.Println("Too large!")
		} else {
			fmt.Println("You got it!")
			break
		}
	}

	if secret != guess {
		fmt.Println("Maybe next time.")
	}
}
