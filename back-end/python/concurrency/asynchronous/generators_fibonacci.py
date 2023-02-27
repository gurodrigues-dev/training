from typing import Generator

# Generators também são chamados de Corrotinas
def fibo() -> Generator[int, None, None]:
    valor: int = 0
    proximo: int = 1

    while True:
        valor, proximo = proximo, valor + proximo
        yield valor

def main():
    for n in fibo():
        print(n, end=', ')
        if n > 100:
            break

    print('\nPronto!')

if __name__ == '__main__':
    main()

