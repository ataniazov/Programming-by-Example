/*
Package comments

For testing godoc
	Printing test
*/
package comments

import (
	"fmt"
)

// type Person comments
type Person struct {
	// exported variable
	Name string
}

// variable comments
var (
	// Some exported var
	X string
	// some var
	x string
)

// GetName returns person.Name
func (person Person) GetName() string {
	return person.Name
}

// PrintHello() greets name
func PrintHello(person Person) {
	fmt.Println("Hello", person.GetName())
}
