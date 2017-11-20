package basics

import "golang.org/x/tour/pic"

func Pic(dx, dy int) [][]uint8 {
	pic := make([][]uint8, dy)

	for i := range pic {
		pic[i] = make([]uint8, dx)
		for j := range pic[i] {
			// pic[i][j] = uint8((i + j) / 2)
			// pic[i][j] = uint8(i * j)
			// pic[i][j] = uint8(i ^ j)
			// pic[i][j] = uint8((i ^ j) * (i ^ j))
			// pic[i][j] = uint8((i*j)^i-j)
			// pic[i][j] = uint8((i-j)^i-j)
			// pic[i][j] = uint8(((1/2)*i-j)^i-j)
			// pic[i][j] = uint8(((1/2)*j-i)^i-j)
			// pic[i][j] = uint8((j-i)^i-j)
			// pic[i][j] = uint8((i^j-j^i)^((i^j)-(j^i)))
			pic[i][j] = uint8(i*i + j*j)
		}
	}
	return pic
}

func exerciseSlices() {
	pic.Show(Pic)
}
