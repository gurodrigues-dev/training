import datetime
import asyncio

async def generate_dates(quantity: int, dates: asyncio.Queue):
    print(f'Aguarde a geração de {quantity} dados...')
    for idx in range(1, quantity + 1):
        item = idx * idx
        await dates.put((item, datetime.datetime.now()))
        await asyncio.sleep(0.001)
    print(f'{quantity} dados gerados com sucesso!')


async def process_dates(quantity: int, dates: asyncio.Queue):
    print(f'Aguarde o processamento de {quantity} dados...')
    processed = 0

    while processed < quantity:
        await dates.get()
        processed += 1
        await asyncio.sleep(0.001)
    
    print(f'Foram processados {processed} itens')

def main():
    total = 500
    dates = asyncio.Queue()
    print(f'Computando {total * 2:.2f} dados...')

    event_loop = asyncio.get_event_loop()

    task1 = event_loop.create_task(generate_dates(total, dates))
    task2 = event_loop.create_task(generate_dates(total, dates))
    task3 = event_loop.create_task(process_dates(total * 2, dates))

    tasks = asyncio.gather(task1, task2, task3)
    event_loop.run_until_complete(tasks)


if __name__ == '__main__':
    main()