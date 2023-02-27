package main

import "fmt"

// Sem herança

type pessoa struct {
	nome      string
	sobrenome string
	idade     int
	altura    int
}

type estudante struct {
	nome      string
	sobrenome string
	idade     int
	altura    int
	curso     string
	faculdade string
}

// Com herança

type heranca_pessoa struct {
	nome      string
	sobrenome string
	idade     int
	altura    int
}

type heranca_estudante struct {
	heranca_pessoa
	curso     string
	faculdade string
}

func main() {

	p1 := heranca_pessoa{"Gustavo", "Rodrigues", 18, 177}
	nome, sobrenome := p1.nome, p1.sobrenome
	fmt.Println(nome, sobrenome)

	est1 := heranca_estudante{p1, "CC", "Unicamp"}
	fmt.Println(est1)
	fmt.Println(est1.nome)

}
