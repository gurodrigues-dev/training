package main

import "fmt"

func main() {

	// Operadores Lógicos

	verdadeiro, falso := true, false
	fmt.Println(verdadeiro && falso)
	fmt.Println(verdadeiro || falso)
	fmt.Println(!verdadeiro)
	fmt.Println(!falso)

	// Operadores Unários

	var numero int = 10
	fmt.Println(numero)

	number := 10
	number++
	fmt.Println(number)

	number += 10
	fmt.Println(number)

	number--
	number -= 20

	numero /= 10
	fmt.Println(numero)

	fmt.Println(number)

	var texto string
	if number >= 5 {
		texto = "Maior que 5"
	} else {
		texto = "Menor que 5"
	}

	fmt.Println(texto)
}
