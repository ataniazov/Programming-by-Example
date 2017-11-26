package methodsAndInterfaces

import (
	"fmt"
	"math"
)

type ErrNegativeSqrt float64

func (e ErrNegativeSqrt) Error() string {
	return fmt.Sprintf("cannot Sqrt negative number: %v", float64(e))
}

func Sqrt(x float64) (float64, error) {
	switch {
	case x == 0:
		return 0, nil
	case x > 0:
		z := float64(1)
		// error := 1e-14; min possible error
		for error := 1e-14; math.Abs(z*z-x) >= error; {
			z -= (z*z - x) / (2 * z)
		}
		return z, nil
	default:
		return 0, ErrNegativeSqrt(x)
	}
}

func exerciseErrors() {
	fmt.Println(Sqrt(2))
	fmt.Println(Sqrt(-2))
	// fmt.Println(ErrNegativeSqrt(-2).Error())

	if v, err := Sqrt(2); err != nil {
		fmt.Println(err)
	} else {
		fmt.Println(v)
	}

	if v, err := Sqrt(-2); err != nil {
		fmt.Println(err)
	} else {
		fmt.Println(v)
	}
}
