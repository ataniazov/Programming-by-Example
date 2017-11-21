package basics

import (
	"strings"

	"golang.org/x/tour/wc"
)

func WordCount(s string) map[string]int {
	words := make(map[string]int)

	fields := strings.Fields(s)
	for _, field := range fields {
		// words[field] = words[field] + 1
		value, ok := words[field]
		if ok {
			words[field] = value + 1
		} else {
			words[field] = 1
		}
	}
	return words
}

func exerciseMaps() {
	wc.Test(WordCount)
}
