package basics

import "fmt"

func deferredCallsArgument() string {
	fmt.Println("inside deferredCallsArgument")
	return "evaluated"
}

func deferredFunctionCall(message string) {
	fmt.Println("inside deferredFunctionCall", message)
}

func tourDefer() {
	defer deferredFunctionCall(deferredCallsArgument())
	defer fmt.Println("world")
	fmt.Print("hello ")
}
