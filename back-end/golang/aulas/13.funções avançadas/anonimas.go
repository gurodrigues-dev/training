package main

import "fmt"

func main() {

	func(text string) {
		fmt.Println(text)
	}("TEXT")

	retorno := func(text string) string {
		return fmt.Sprintf("Recebido -> %s", text)
	}("Passando parâmetro")

	fmt.Println(retorno)

}
