package basics

import (
	"fmt"
)

func pointers() {
	i, j := 42, 2701

	p := &i         // point to i
	fmt.Println(*p) // read i through the pointer
	*p = 21         // set i through the pointer
	fmt.Println(i)  // see the new value of i

	p = &j         // point to j
	*p = *p / 37   // divide j through the pointer
	fmt.Println(j) // see the new value of j

	pp := &p // point to point

	fmt.Println(" name\ttype address")
	fmt.Printf(" &pp: %6T %v\n", &pp, &pp)
	fmt.Printf("  pp: %6T %v\n", pp, pp)
	fmt.Printf("  &p: %6T %v\n", &p, &p)
	fmt.Printf(" *pp: %6T %v\n", *pp, *pp)
	fmt.Printf("   p: %6T %v\n", p, p)
	fmt.Printf("**pp: %6T %v\n", **pp, **pp)
	fmt.Printf("  *p: %6T %v\n", *p, *p)
}
