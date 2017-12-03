package effectiveGo

// Formatting
// gofmt formating file
// go fmt formating package

// type T struct {
//		name string // name of the object
//		value int // its value
// }

type T struct {
	name  string // name of the object
	value int    // its value
}

// Indentation
// Keep calm and use tabs.

// Line length
// Go has no line length limit. Don't worry about
// overflowing a punched card. If a line feels too
// long, wrap it and indent with an extra tab.
func SomeFunc(
	v1, // v1
	v2, // v2
	v3, // v3
	v4 /* v4 */ int) int {
	return (v1 * v2) + (v3 * v4)
}

// Parantheses
// x<<8 + y<<16

// /* */ C-style
// // C++ style
// godoc
