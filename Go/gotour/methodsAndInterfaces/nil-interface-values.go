package methodsAndInterfaces

// type I interface {
// 	M()
// }

func nilInterfaceValues() {
	var i I
	describe(i)
	i.M()
}

// func describe(i I) {
// 	fmt.Printf("(%v, %T)\n", i, i)
// }
