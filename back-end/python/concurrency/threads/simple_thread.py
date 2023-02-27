import threading 
import time

def main():
    th = threading.Thread(target=contar, args=('elephant', 10))

    th.start()
    
    print('Podemos fazer outras coisas no programa enquanto a thread vai executando...\n')
    print('Gustavo Rodrigues ' * 2)

    th.join()

    print('Finalizado!')

def contar(subject,  number):
    for n in range(1, number+1):
        print(f'{n} {subject}(s)...')
        time.sleep(1)

if __name__ == '__main__':
    main()
