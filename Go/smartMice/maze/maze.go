package maze

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
)

type Cell uint

const (
	WALL  Cell = 0
	SPACE Cell = 1
)

func (cell Cell) String() string {
	cellTypes := [...]string{
		"WALL",
		"SPACE",
	}

	if cell < WALL || cell > SPACE {
		return "Unknown Cell"
	}

	return cellTypes[cell]
}

type maze struct {
	matrix [][]Cell
}

func Maze(fileName string) *maze {
	return initMazeFromFile(fileName)
}

func initMazeFromFile(fileName string) *maze {
	file, err := os.Open(fileName) // For read access.
	if err != nil {
		log.Fatal(err)
	}

	defer file.Close()

	scanner := bufio.NewScanner(file)
	scanner.Split(bufio.ScanLines)

	scanner.Scan()
	line := scanner.Text()
	rowLen := len(line)
	fmt.Println("row length:", rowLen)

	var m maze

	m.matrix = append(m.matrix, strToMazeRow(line))

	for scanner.Scan() {
		line = scanner.Text()
		if rowLen == len(line) {
			m.matrix = append(m.matrix, strToMazeRow(line))
		} else {
			panic(fileName + " not a maze file!")
		}
	}

	return &m
}

func strToMazeRow(row string) []Cell {
	var mazeRow []Cell

	strArr := strings.Split(row, "")

	for _, str := range strArr {
		switch str {
		case "0":
			mazeRow = append(mazeRow, WALL)
		case "1":
			mazeRow = append(mazeRow, SPACE)
		default:
			panic("strArrToBoolArr() " + str + " NOT maze cell!")
		}
	}

	return mazeRow
}

func (m maze) PrintMaze() {
	for _, row := range m.matrix {
		for _, cell := range row {
			switch cell {
			case WALL:
				fmt.Print("\u2588\u2588")
			case SPACE:
				fmt.Print("  ")
			default:
				panic("PrintMaze() " + cell.String() + " not a maze element")
			}
		}
		fmt.Println()
	}
}

func (m maze) GetDoors() []Coordinate {

	var coordinates []Coordinate

	rows := []int{0, len(m.matrix) - 1}
	for _, row := range rows {
		for j, cell := range m.matrix[row] {
			if cell == SPACE {
				coordinates = append(coordinates, Coordinate{row, j})
			}
		}
	}

	cols := []int{0, len(m.matrix[0]) - 1}
	for _, col := range cols {
		for i := range m.matrix {
			cell := m.matrix[i][col]
			if cell == SPACE {
				coordinates = append(coordinates, Coordinate{i, col})
			}
		}
	}

	return coordinates
}
