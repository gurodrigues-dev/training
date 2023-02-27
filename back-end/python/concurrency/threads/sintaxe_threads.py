import threading

def some_function(param: int) -> int:
    print("Executando...")
    print(f"Utilizando parametro recebido: {param}")

    return param * param

th = threading.Thread(target=some_function, args=(42,))

th.start() #-> Ele joga o algoritmo na pool de threads, agendando a execução no Processador
th.join() #-> Já o join cita que: O programa não deve continuar enquanto a execução agendada pelo processador não for terminada.

