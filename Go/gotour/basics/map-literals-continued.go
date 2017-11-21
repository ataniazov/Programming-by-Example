package basics

import "fmt"

func mapLiteralsContinued() {
	var m = map[string]VertexThree{
		"Bell Labs": {40.68433, -74.39967},
		"Google":    {37.42202, -122.08408},
	}

	fmt.Println(m)
}
