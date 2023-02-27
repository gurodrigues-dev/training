import threading
import time

def main():
    
    threads = [
        threading.Thread(target=count, args=('Elephant', 10)),
        threading.Thread(target=count, args=('Fish', 8)),
        threading.Thread(target=count, args=('Lion', 23)),
        threading.Thread(target=count, args=('Pigs', 12))
    ]

    [th.start() for th in threads]
    [th.join() for th in threads]

    print('Finalizado!')

def count(subject, number):

    for n in range(1, number+1):
        print(f'{n} {subject}(s)...')
        time.sleep(1)

if __name__ == '__main__':
    main()