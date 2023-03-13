import requests
import variables

def req(uri: str) -> None:
    response = requests.get(f'{variables.URL}{uri}')
    return response



