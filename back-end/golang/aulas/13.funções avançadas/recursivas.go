package main

import "fmt"

func fibonacci(position int) int {

	if position <= 1 {
		return position
	}

	return fibonacci(position-2) + fibonacci(position-1)

}

func main() {
	fmt.Println("funções recursivas")

	posicao := int(6)
	fmt.Println(fibonacci(posicao))

	for i := 0; i < posicao+1; i++ {
		fmt.Println(fibonacci(i))
	}

}
