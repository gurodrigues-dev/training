import time

def main(x: str):
    print(f"Hello {x}")
    permission = True
    count = 0
    while permission:
        count += 1
        print(f"tempo de uso: {count}")
        time.sleep(1)

if __name__ == "__main__":
    main("Gustavo")

