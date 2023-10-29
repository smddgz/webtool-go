package service

import (
	"fmt"
	"os"
)

func GetContentFromFile() {
	filepath := "D:/a.txt"
	file, err := os.ReadFile(filepath)
	if err != nil {

	}
	fmt.Println(string(file))
}
