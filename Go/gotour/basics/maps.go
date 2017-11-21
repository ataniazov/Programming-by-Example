package basics

import (
	"fmt"
)

type VertexThree struct {
	Lat, Long float64
}

func maps() {
	var m map[string]VertexThree

	m = make(map[string]VertexThree)
	m["Bell Labs"] = VertexThree{
		40.68433, -74.39967,
	}

	m["Kocaeli University"] = VertexThree{
		40.82172, 29.92340,
	}

	m["TG"] = VertexThree{
		41.17052, 27.49436,
	}

	fmt.Println("Bell Labs:", m["Bell Labs"])
	fmt.Println("Kocaeli University:", m["Kocaeli University"])

	fmt.Printf("%T\n%v\n", m, m)
}
