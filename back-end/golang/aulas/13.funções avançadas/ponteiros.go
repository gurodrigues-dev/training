package main

import "fmt"

func inverterSinal(number int) int {
	fmt.Println("Dentro da função Inverter Sinal")

	return number * -1
}

func inverterSinalComPonteiro(number *int) {
	*number = *number * -1

}

func main() {
	fmt.Println("Ponteiros na função!")

	number := -30
	fmt.Println(inverterSinal(number))

	newNumber := 30
	inverterSinalComPonteiro(&newNumber)
	fmt.Println(newNumber)
}
