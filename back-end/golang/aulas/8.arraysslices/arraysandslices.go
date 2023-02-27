package main

import (
	"fmt"
	"reflect"
)

func main() {

	// arrays

	fmt.Println("Arrays and Slices!")

	var array [5]int
	fmt.Println(array)
	array[0] = 1
	fmt.Println(array)

	array2 := [5]string{"p1", "p2", "p3", "p4", "p5"}
	fmt.Println(array2)

	array3 := [...]int{1, 2, 3, 4, 5}
	fmt.Println(array3)
	array3[3] = 20
	fmt.Println(array3)

	// slices

	slice := []int{1, 2, 3, 4, 5}
	fmt.Println(slice)

	slice = append(slice, 6)
	fmt.Println(slice)

	fmt.Println(reflect.TypeOf(slice))
	fmt.Println(reflect.TypeOf(array))

	// arrays internos
	slice3 := make([]int, 10, 15)
	fmt.Println(len(slice3))
	fmt.Println(cap(slice3))
	fmt.Println(slice3)
}
