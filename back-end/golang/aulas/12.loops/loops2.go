package main

import "fmt"

func main() {
	nomes := [3]string{"João", "Davi", "Lucas"}

	for _, nome := range nomes {
		fmt.Println(nome)
	}

	palavra := "PALAVRA"

	for _, letra := range palavra {
		fmt.Println(string(letra))
	}

	user := map[string]string{
		"nome":      "Gustavo",
		"sobrenome": "Rodrigues",
	}

	for chave, valor := range user {
		fmt.Println(chave, valor)
	}
}
