package main

import "fmt"

type forma interface {
	area() float64
}

func EscreverArea(f forma) {
	fmt.Printf("A área da forma é %0.2f", f.area())
}

func (r retangulo) area() float64 {
	return r.altura * r.largura
}

type retangulo struct {
	altura  float64
	largura float64
}

type circulo struct {
	raio float64
}

func main() {
	r := retangulo{10.0, 20.0}
	EscreverArea(r)

}
