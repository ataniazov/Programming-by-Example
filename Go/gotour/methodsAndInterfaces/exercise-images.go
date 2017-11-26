package methodsAndInterfaces

import (
	"image"
	"image/color"

	"golang.org/x/tour/pic"
)

type Image struct{}

func (image Image) At(x, y int) color.Color {
	return image.At(x, y)
}

func (image Image) Bounds() image.Rectangle {
	return image.Rect(0, 0, 100, 100)
}

func (image Image) ColorModel() color.RGBAModel {
	return color.RGBAModel
}

func exerciseImages() {
	m := Image{}
	pic.ShowImage(m)
}
