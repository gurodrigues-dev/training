package main

import "fmt"

func main() {
	fmt.Println("Estrutura de Controle!")

	number := 30

	if number >= 30 {
		fmt.Println("maior que 30")
	} else {
		fmt.Println("menor que 30")
	}

	if otherNumber := number; otherNumber > 0 {
		fmt.Println("Número temporário é maior que 0")
	} else {
		fmt.Println("Número temporário é menor que 0")
	}

}
