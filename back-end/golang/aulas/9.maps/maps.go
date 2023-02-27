package main

import "fmt"

func main() {
	fmt.Println("Maps")

	usuario := map[string]string{
		"nome":      "Gustavo",
		"sobrenome": "Rodrigues",
	}

	fmt.Println(usuario)

	fmt.Println(usuario["nome"])

	usuario2 := map[string]map[string]string{
		"nome": {
			"sobrenome": "Rodrigues",
		},
	}

	fmt.Println(usuario2)

	jenkinsfile := map[string]map[string]map[string]string{
		"job_run_python": {
			"build": {
				"result": "SUCESS",
			},
		},
		"job_run_java": {
			"build": {
				"result": "FAILURE",
			},
		},
		"job_run_go": {
			"build": {
				"result": "EXCEPTIONAL",
			},
		},
	}

	fmt.Println(jenkinsfile)
	delete(jenkinsfile, "job_run_java")

	jenkinsfile["job_run_rust"] = map[string]map[string]string{
		"build": {
			"result": "SUCESS",
		},
	}
	fmt.Println(jenkinsfile)

	//fmt.Println(jenkinsfile["job_run_python"]["build"]["result"])

}
