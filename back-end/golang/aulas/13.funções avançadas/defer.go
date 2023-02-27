package main

import "fmt"

func firstfunc() {
	fmt.Println("Executando a função primária")
}

func secondfunc() {
	fmt.Println("Executando a função secundária")
}

func alunoEstaAprovado(n1, n2 float32) bool {
	//defer é executado antes, entretanto, só é mostrando no fim porém antes do return.
	defer fmt.Println("Média calculda, resultado será exibido")
	fmt.Println("Entrando na função")

	media := n1 + n2/2

	if media >= 6 {
		return true
	}

	return false

}

func main() {
	fmt.Println("Defer!")

	//defer == "ATRASAR"
	defer firstfunc()

	secondfunc()

	fmt.Println(alunoEstaAprovado(7, 7))

}
