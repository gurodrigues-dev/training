package main

import "fmt"

var n int

func main() {
	fmt.Println("Função main sendo executada")
	fmt.Println(n)
}

func init() {
	fmt.Println("Executando a função init")
	n = 10
}
