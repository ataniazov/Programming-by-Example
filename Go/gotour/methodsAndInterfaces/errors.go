package methodsAndInterfaces

import (
	"fmt"
	"strconv"
	"time"
)

type MyError struct {
	When time.Time
	What string
}

func (e *MyError) Error() string {
	return fmt.Sprintf("at %v, %s", e.When, e.What)
}

func run() error {
	return &MyError{
		time.Now(), "it didn't work",
	}
}

func errors() {
	if err := run(); err != nil {
		fmt.Println(err)
	}

	strToInt("42")
	strToInt("hello")
}

func strToInt(str string) {

	i, err := strconv.Atoi(str)

	describeTwo(i)
	describeTwo(str)
	describeTwo(err)

	if err != nil {
		fmt.Printf("couldn't convert number: %v\n", err)
		return
	}
	fmt.Println("Converted integer:", i)
}
