package main

import (
	"fmt"
	"time"
)

func main() {
	i := 0
	for i < 11 {
		fmt.Println(i)
		time.Sleep(time.Second)
		i++
	}

	fmt.Println(i)

	for j := 0; j < 11; j++ {
		fmt.Println("Incrementando J")
		time.Sleep(time.Second)
	}
}
