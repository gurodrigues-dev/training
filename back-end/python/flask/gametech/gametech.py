from flask import Flask, render_template

app = Flask(__name__)

@app.route('/inicio')
def hello():
    list = ['tetris', 'fifa', 'skyrim', 'crash']
    return render_template('lista.html', titulo='Jogos', jogos=list)

app.run()