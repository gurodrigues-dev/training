from flask import Flask, request, Response

app = Flask(__name__)

empregados = [
                {'nome':'Gustavo', 'cargo':'Desenvolvedor', 'salario':6500},
                {'nome':'Davi', 'cargo':'Analista', 'salario':5000},
                {'nome': 'Vitor', 'cargo':'Analista', 'salario':4000}
            ]
            
@app.route('/', methods=['GET'])
def home():
    return '<h1> Visite: /empregados </h1><h1> Visite também: /cargo/<nome_do_cargo> </h1>'

@app.route('/empregados', methods=['GET'])
def get_empregados():
    return {'empregados':empregados}

@app.route('/cargo/<cargo>', methods=['GET'])
def get_cargo(cargo):
    out_empregados = []
    for empregado in empregados:
        if empregado.get('cargo') == cargo:
            out_empregados.append(empregado)
    return {'empregados':out_empregados}

@app.route('/cargo/<cargo>/<int:salario>', methods=['GET'])
def get_info(cargo, salario):
    out_empregados = []
    for empregado in empregados:
        if empregado.get('cargo') == cargo and empregado.get('salario') == salario:
            out_empregados.append(empregado)
    return {'empregados':out_empregados}

if __name__ == '__main__':
    app.run(debug=True)