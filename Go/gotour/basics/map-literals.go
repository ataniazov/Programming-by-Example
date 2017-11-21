package basics

import (
	"fmt"
)

func mapLiterals() {
	var m = map[string]VertexThree{
		"Bell Labs": VertexThree{
			40.68433, -74.39967,
		},
		"Google": VertexThree{
			37.42202, -122.08408,
		},
	}
	fmt.Println(m)
}
