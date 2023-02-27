package main

import (
	"fmt"
)

func somar(a, b int8) int8 {
	return a + b
}

func calculosMatematicos(a int, b int) (int, int, int, int) {
	sum := a + b
	sub := a - b
	mul := a * b
	div := a / b
	return sum, sub, mul, div
}

func main() {
	fmt.Println("ok")

	var f = func(txt string) string {
		fmt.Println(txt)
		return txt
	}

	resultado := f("Testeeee")
	fmt.Println(resultado)

	soma := somar(5, 5)
	fmt.Println(soma)

	sum, sub, mul, div := calculosMatematicos(10, 20)
	fmt.Println(sum, sub, mul, div)
}
