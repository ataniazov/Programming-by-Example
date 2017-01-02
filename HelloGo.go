package main

import (
	"fmt"
	"math"
	"strings"
	"sort"
	"os"
	"log"
	"io/ioutil"
	"strconv"
	"net/http"
	"time"
)

// Comments
/*
MultiLine comment
 */

func main() {
	fmt.Println("Hello World")

	var age int = 40

	var favNum float64 = 1.6180339

	randNum := 1
	//randNum := "Hello World"

	fmt.Println(age, favNum, randNum)

	var numOne = 1.000
	var num99 = .9999

	fmt.Println(numOne - num99)

	//	+ - * / %

	fmt.Println("6 + 4 =", 6+4)
	fmt.Println("6 - 4 =", 6-4)
	fmt.Println("6 * 4 =", 6*4)
	fmt.Println("6 / 4 =", 6/4)
	fmt.Println("6 % 4 =", 6%4)

	const pi float64 = 3.14159265

	var myName string = "Ata Niyazov"

	fmt.Println(len(myName))

	fmt.Println(myName + " is a robot")
	fmt.Println("i like \n \n")
	fmt.Println("newlines")

	var isOver40 bool = true

	fmt.Printf("%f \n", pi)
	fmt.Printf("%.3f \n", pi)
	fmt.Printf("%T \n", pi)

	fmt.Println()

	fmt.Printf("%t \n", isOver40)
	fmt.Printf("%d \n", 100)
	fmt.Printf("%b \n", 100)
	fmt.Printf("%c \n", 44)
	fmt.Printf("%x \n", 17)
	fmt.Printf("%e \n", 100)

	fmt.Printf("%e \n", pi)

	fmt.Println("true && false =", true && false)
	fmt.Println("true || false =", true || false)
	fmt.Println("!true =", !true)

	// Loops

	i := 1

	for i <= 10 {
		fmt.Println(i)
		i++ // i = i + 1
		// i--
	}

	/* Relational operators:
	 == != < > <= >=
	 */

	for j := 0; j < 5; j++ {
		fmt.Print(j, " ")
	}

	fmt.Println()

	yourAge := 18

	if yourAge >= 16 {
		fmt.Println("You Can Drive")
	} else if yourAge >= 18 {
		fmt.Println("You Can Vote")
	} else {
		fmt.Println("You Can Fun")
	}

	switch yourAge {

	case 16:
		fmt.Println("Go Drive")
	case 18:
		fmt.Println("Go Vote")
	default:
		fmt.Println("Go Have a Fun")

	}

	// Arrays

	var favNums2 [5] float64

	favNums2[0] = 163
	favNums2[1] = 78557
	favNums2[2] = 691
	favNums2[3] = 3.141
	favNums2[4] = 1.618

	fmt.Println(favNums2)
	fmt.Println(favNums2[3])

	favNums3 := [5]float64{1, 2, 3, 4, 5}

	for i, value := range favNums3 {
		fmt.Println(i, value)
	}

	fmt.Println()

	for _, value := range favNums3 {
		fmt.Println(value)
	}

	// Slices

	numSlice := []int{5, 4, 3, 2, 1}

	numSlice2 := numSlice[3:5]

	fmt.Println("numSlice2[0] =", numSlice2[0])
	fmt.Println("numSlice2[1] =", numSlice2[1])

	fmt.Println("numSlice[:2] =", numSlice[:2])
	fmt.Println("numSlice[2:] =", numSlice[2:])

	numSlice3 := make([]int, 5, 10)

	copy(numSlice3, numSlice)

	fmt.Println(numSlice3[0])

	numSlice3 = append(numSlice3, 0, -1)

	fmt.Println(numSlice3[5:])
	fmt.Println(numSlice3)

	// Maps

	presAge := make(map[string]int)

	presAge["Theodore Roosevelt"] = 42

	fmt.Println(len(presAge))

	presAge["John F. Kennedy"] = 43
	fmt.Println(len(presAge))

	delete(presAge, "John F. Kennedy")
	fmt.Println(len(presAge))

	listNums := []float64{1, 2, 3, 4, 5}

	fmt.Println("Sum :", addThemUp(listNums))

	num1, num2 := next2Values(5)
	fmt.Println(num1, num2)

	fmt.Println(subtractThem(1, 2, 3, 4, 5))

	// cloujure

	num3 := 3

	doubleNum := func() int {
		num3 *= 2

		return num3
	}

	fmt.Println(doubleNum())
	fmt.Println(doubleNum())
	fmt.Println(doubleNum())

	// recursive function

	fmt.Println(factorial(3))

	// defer

	defer printOne()
	printTwo()

	fmt.Println(safeDiv(3, 2))
	fmt.Println(safeDiv(3, 0))

	demPanic()

	// Pointers

	x := 0

	chaneXVal(x)

	fmt.Println("x =", x)

	chaneXValNow(&x)

	fmt.Println("x =", x)

	fmt.Println("Memory Address for x =", &x)

	yPtr := new(int)
	chaneYValNow(yPtr)

	fmt.Println("y =", *yPtr)

	// structs

	rect1 := RectangleStruct{leftX:0, topY:50, height:10, width:10}
	rect2 := RectangleStruct{0, 60, 20, 20}

	fmt.Println("Rectangle 1 is", rect1.width, "wide")
	fmt.Println("Rectangle 2 is", rect2.width, "wide")

	fmt.Println("Area of rectangle 1 is", rect1.area())

	// interfaces (polymorphysm)

	rect := RectangleInterface{20, 50}
	circ := Circle{4}

	fmt.Println("Rectangle Area =", getArea(rect))
	fmt.Println("Circle Area =", getArea(circ))

	// String

	sampString := "Hello World"

	fmt.Println(sampString)
	fmt.Println(strings.Contains(sampString, "lo"))
	fmt.Println(strings.Index(sampString, "lo"))
	fmt.Println(strings.Count(sampString, "l"))
	fmt.Println(strings.Replace(sampString, "l", "x", 2))

	csvString := "1,2,3,4,5,6"

	fmt.Println(csvString)
	fmt.Println(strings.Split(csvString, ","))

	listOfLetters := []string{"c", "a", "b"}

	sort.Strings(listOfLetters)

	fmt.Println("Letters:", listOfLetters)

	listOfNums := strings.Join([]string{"3", "2", "1"}, ",")

	fmt.Println(listOfNums)

	// File IO

	file, err := os.Create("samp.txt")

	if err != nil {
		log.Fatal(err)
	}

	file.WriteString("This is some random text")

	file.Close()

	stream, err := ioutil.ReadFile("samp.txt")

	if err != nil {
		log.Fatal(err)
	}

	readString := string(stream)

	fmt.Println("readString:", readString)

	// Converting

	randInt := 5
	randFloat := 10.5
	randString := "100"
	randString2 := "250.5"

	fmt.Println(float64(randInt))
	fmt.Println(int(randFloat))

	newInt, _ := strconv.ParseInt(randString, 0, 64)
	fmt.Println(newInt)

	newFloat, _ := strconv.ParseFloat(randString2, 64)
	fmt.Println(newFloat)

	// Http Server

	http.HandleFunc("/", handler)
	http.HandleFunc("/earth", handler2)

	//http.ListenAndServe(":8080", nil)

	// Corutines
	for i := 0; i < 10; i++ {
		go count(i)
	}

	time.Sleep(time.Millisecond * 10000)

	// Channels

	stringChan := make(chan string)

	for i := 0; i < 3; i++ {
		go makeDough(stringChan)
		go addSauce(stringChan)
		go addToppings(stringChan)

		time.Sleep(time.Microsecond * 5000)
	}

}

/* function declaration:

func <func_name>(<parameters>) <return_value>

 */

func addThemUp(numbers []float64) float64 {
	sum := 0.0

	for _, val := range numbers {
		sum += val // sum = sum + val
	}

	return sum
}

func next2Values(number int) (int, int) {

	return number + 1, number + 2
}

func subtractThem(args ...int) int {
	finalValue := 0
	for _, value := range args {
		finalValue -= value
	}
	return finalValue
}

func factorial(num int) int {
	if num == 0 {
		return 1
	}

	return num * factorial(num - 1)
}

func printOne() { fmt.Println(1) }
func printTwo() { fmt.Println(2) }

func safeDiv(num1, num2 int) int {
	defer func() {
		fmt.Println(recover())
	}()

	solution := num1 / num2
	return solution
}

func demPanic() {
	defer func() {
		fmt.Println(recover())
	}()

	panic("PANIC")
}

func chaneXVal(x int) {
	x = 2
}

func chaneXValNow(x *int) {
	*x = 2
}

func chaneYValNow(yPtr *int) {
	*yPtr = 100
}

type RectangleStruct struct {
	leftX  float64
	topY   float64
	height float64
	width  float64
}

func (rect *RectangleStruct) area() float64 {
	return rect.width * rect.height
}

type Shape interface {
	area() float64
}

type RectangleInterface struct {
	height float64
	width  float64
}

type Circle struct {
	radius float64
}

func (r RectangleInterface) area() float64 {
	return r.height * r.width
}

func (c Circle) area() float64 {
	return math.Pi * math.Pow(c.radius, 2)
}

func getArea(shape Shape) float64 {
	return shape.area()
}

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World\n")
}

func handler2(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello Earth\n")
}

func count(id int) {
	for i := 0; i < 10; i++ {
		fmt.Println(id, ":", i)
		time.Sleep(time.Millisecond * 1000)
	}
}

var pizzaNum = 0
var pizzaName = ""

func makeDough(stringChan chan string) {
	pizzaNum++
	pizzaName = "Pizza #" + strconv.Itoa(pizzaNum)

	fmt.Println("Make Dough and Send for Sauce")

	stringChan <- pizzaName

	time.Sleep(time.Millisecond * 10)
}

func addSauce(stringChan chan string) {
	pizza := <-stringChan

	fmt.Println("Add Sauce and Send", pizza, "for toppings")

	stringChan <- pizzaName

	time.Sleep(time.Millisecond * 10)
}

func addToppings(stringChan chan string) {
	pizza := <- stringChan
	fmt.Println("Add Toppings to", pizza, "and ship")

	time.Sleep(time.Millisecond * 10)

}
