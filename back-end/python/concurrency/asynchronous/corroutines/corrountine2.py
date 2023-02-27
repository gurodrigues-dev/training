import asyncio

async def say_hi_long_time() -> str:
    '''
    Sempre que for utilizar uma função assíncrona utilize await, antes de chamar a função. E você só pode usar o await dentro de outra função que também seja assíncrona.
    '''
    print('Hi...')
    await asyncio.sleep(2)
    print('All...')


event_loop = asyncio.get_event_loop()
event_loop.run_until_complete(say_hi_long_time())
event_loop.close()
