package main

import "fmt"

func calculoSoma(numeros ...int) int {
	total := 0

	for _, numero := range numeros {
		total += numero
	}

	return total
}

func write(texto string, numeros ...int) {
	for _, numero := range numeros {
		fmt.Println(texto, numero)
	}
}

func main() {
	totalSoma := calculoSoma(10, 20, 30, 40)
	fmt.Println(totalSoma)

	write("Hello", 12, 12, 12)

}
