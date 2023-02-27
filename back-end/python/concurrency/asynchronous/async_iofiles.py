import asyncio
import aiofiles

async def example_file():
    async with aiofiles.open('async_iofile.txt') as file:
        content = await file.read()
    print(content)

async def example_file_link():
    async with aiofiles.open('async_iofile_link.txt') as file:
        async for row in file:
            print(row)

def main():
    event_loop = asyncio.get_event_loop()

    task1 = event_loop.create_task(example_file())
    task2 = event_loop.create_task(example_file_link())
    tasks = asyncio.gather(task1, task2)

    event_loop.run_until_complete(tasks)

    event_loop.close() 

if __name__ == '__main__':
    main()