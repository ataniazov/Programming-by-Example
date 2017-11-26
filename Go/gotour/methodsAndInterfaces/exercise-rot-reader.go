package methodsAndInterfaces

import (
	"fmt"
	"io"
	"os"
	"strings"
)

type rot13Reader struct {
	r io.Reader
}

func (rot13 *rot13Reader) Read(bytes []byte) (int, error) {
	n, err := rot13.r.Read(bytes)
	for i := 0; i < n; i++ {
		bytes[i] = Rot13(bytes[i])
	}
	return n, err
}

func exerciseRotReader() {
	s := strings.NewReader("Lbh penpxrq gur pbqr!")
	r := rot13Reader{s}
	io.Copy(os.Stdout, &r)

	fmt.Println()
}

func Rot13(char byte) byte {
	switch {
	case (char >= 'A' && char <= 'M') || (char >= 'a' && char <= 'm'):
		return char + 13
	case (char >= 'N' && char <= 'Z') || (char >= 'n' && char <= 'z'):
		return char - 13
	default:
		return char
	}
}
