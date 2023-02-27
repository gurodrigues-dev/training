def fibonacci(position: int):
    if position <= 1:
        return position

    return fibonacci(position - 2) + fibonacci(position - 1)

def process(rounds: int):
    list = []

    for round in range(rounds):
        add_list = int(input())
        list.append(add_list)

    for number in list:
        fibo_calc = fibonacci(number)
        print(f'Fib({number}) = {fibo_calc}')

def main():
    rounds = int(input())
    process(rounds)

if __name__ == "__main__":
    main()