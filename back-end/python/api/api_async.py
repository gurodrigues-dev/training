import asyncio
from flask import Flask

app = Flask(__name__)

@app.route('/', methods=['GET'])
def home():
    return '<h1> Visite: /empregados </h1><h1> Visite também: /cargo/<nome_do_cargo> </h1>'

if __name__ == '__main__':
    app.run()