package maze

import (
	"fmt"
)

type Relative uint

const (
	FORWARD  Relative = 0
	RIGHT    Relative = 1
	BACKWARD Relative = 2
	LEFT     Relative = 3
)

func (relative Relative) String() string {
	relatives := [...]string{
		"FORWARD",
		"RIGHT",
		"BACKWARD",
		"LEFT",
	}

	if relative < FORWARD || relative > LEFT {
		return "Unknown Relative"
	}

	return relatives[relative]
}

type Cardinal uint

const (
	NORTH Cardinal = iota
	EAST
	SOUTH
	WEST
)

func (cardinal Cardinal) String() string {
	cardinals := [...]string{
		"NORTH",
		"EAST",
		"SOUTH",
		"WEST",
	}

	if cardinal < NORTH || cardinal > WEST {
		return "Unknown Cardinal"
	}

	return cardinals[cardinal]
}

type Coordinate struct {
	row, col int
}

type Position struct {
	coordinate Coordinate
	cardinal   Cardinal
}

var position Position

func (m maze) PrintPosition() {
	fmt.Printf("position - row: %v, col: %v, direction: %v\n", position.coordinate.row, position.coordinate.col, position.cardinal)
}

func (m maze) Move(relative Relative) {
	switch relative {
	case FORWARD:
		switch position.cardinal {
		case NORTH:
			if (position.coordinate.row - 1) >= 0 {
				position.coordinate.row -= 1
			}
		case EAST:
		case SOUTH:
			if (position.coordinate.row + 1) >= 0 {
				position.coordinate.row += 1
			}
		case WEST:
		default:
			panic("Move() CAN NOT detect position " + position.cardinal.String())
		}
	case BACKWARD:
		switch position.cardinal {
		case NORTH:
			if (position.coordinate.row + 1) >= 0 {
				position.coordinate.row += 1
			}
		case EAST:
		case SOUTH:
			if (position.coordinate.row - 1) >= 0 {
				position.coordinate.row -= 1
			}
		case WEST:
		default:
			panic("Move() CAN NOT detect position " + position.cardinal.String())
		}
	default:
		panic("Move() CAN NOT move to " + relative.String() + "!")
	}
}

func (m maze) Turn(relative Relative) {
	switch relative {
	case RIGHT:
		position.cardinal = (position.cardinal + 1) % 4
	case LEFT:
		position.cardinal = (position.cardinal - 1) % 4
	default:
		panic("Turn() CAN NOT turn to " + relative.String() + "!")
	}
}
