package basics

import (
	"fmt"
	"time"
)

func switchWithNoCondition() {
	t := time.Now()
	switch {
	case t.Hour() < 12:
		fmt.Println("Good morning!")
	case t.Hour() < 17:
		fmt.Println("Good afternoon.")
	default:
		fmt.Println("Good evening.")
	}
	// fmt.Println(t.Hour())
	// fmt.Println(t.Weekday())
}
