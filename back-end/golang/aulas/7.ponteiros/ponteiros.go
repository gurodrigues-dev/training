package main

import "fmt"

func main() {
	fmt.Println("Ponteiros")

	var variavel int
	var ponteiro *int

	variavel = 100
	ponteiro = &variavel

	fmt.Println(variavel, ponteiro)
}
