package main

import "fmt"

type usuario struct {
	nome      string
	sobrenome string
	idade     int
}

func (u usuario) salvar() {
	fmt.Printf("Salvando os dados do %s no Banco de Dados!\n", u.nome)
}

func (u usuario) maiorDeIdade() bool {
	return u.idade >= 18
}

func (u *usuario) fazerAniversario() {
	u.idade++
	fmt.Println(u.idade)
}

func main() {
	fmt.Println("Métodos")

	usuario1 := usuario{"Gustavo", "Rodrigues", 18}
	fmt.Println(usuario1)
	usuario1.salvar()

	maiorDeIdade := usuario1.maiorDeIdade()
	fmt.Println(maiorDeIdade)

	usuario1.fazerAniversario()
}
