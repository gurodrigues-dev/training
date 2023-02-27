package main

import "fmt"

func closure() func() {
	texto := "Texto dentro da função closure"

	funcao := func() {
		fmt.Println(texto)

	}

	return funcao
}

func main() {
	fmt.Println("Closure!")

	texto := "Texto dentro da função main"

	newFunc := closure()
	newFunc()

	fmt.Println(texto)
}
