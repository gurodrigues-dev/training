package main

import "fmt"

type usuario struct {
	nome     string
	idade    int
	endereco endereco
}

type endereco struct {
	rua    string
	numero int
}

func main() {

	endereco_main := endereco{"Barão de Alagoas", 10}
	usuario_main := usuario{"Gustavo", 18, endereco_main}
	fmt.Println(usuario_main)

}
