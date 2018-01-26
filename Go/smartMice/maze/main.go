package maze

import (
	"fmt"
)

func Main() {
	fmt.Println("Hello from maze!")

	fileName := "maze/maze.txt"
	m := Maze(fileName)
	m.PrintMaze()
	fmt.Println("Doors:", m.GetDoors())
	m.PrintPosition()
	m.Turn(RIGHT)
	m.PrintPosition()
	m.Turn(RIGHT)
	m.PrintPosition()
	m.Turn(RIGHT)
	m.PrintPosition()
	m.Turn(RIGHT)
	m.PrintPosition()
	m.Turn(LEFT)
	m.PrintPosition()
	m.Turn(LEFT)
	m.PrintPosition()
	m.Turn(LEFT)
	m.PrintPosition()
	m.Turn(LEFT)
	m.PrintPosition()
	m.Move(FORWARD)
	m.PrintPosition()
	m.Move(BACKWARD)
	m.PrintPosition()
}
