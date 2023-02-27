package main

import "fmt"

func diaDaSemana(number int) string {
	switch number {
	case 1:
		return "Domingo"
	case 2:
		return "Segunda"
	case 3:
		return "Terca"
	case 4:
		return "Quarta"
	case 5:
		return "Quinta"
	case 6:
		return "Sexta"
	case 7:
		return "Sabado"
	default:
		return "Número inválido"
	}
}

func main() {
	dia := diaDaSemana(2)
	fmt.Println(dia)
}
