import asyncio
import aiofiles
import aiohttp
import bs4

async def get_links(file: str) -> list:
    links = []
    async with aiofiles.open(file) as file:
        async for link in file:
            links.append(link.strip())
    return links

async def get_html(link: str):
    print('Getting html of file')

    async with aiohttp.ClientSession() as session:
        async with session.get(link) as response:
            response.raise_for_status()

            return await response.text()

def get_title(html):
    return html


def main():
    return

if __name__ == '__main__':
    main()