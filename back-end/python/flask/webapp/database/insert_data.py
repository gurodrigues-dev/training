import sqlite3

empregados = [
                {'nome':'Gustavo', 'cargo':'Desenvolvedor', 'salario':6500},
                {'nome':'Davi', 'cargo':'Analista', 'salario':5000},
                {'nome': 'Vitor', 'cargo':'Analista', 'salario':4000}
             ]

conn = sqlite3.connect('enterprise.db')
cursor = conn.cursor()

cursor.execute("""
    SELECT * FROM empregados
""")

for empregado in empregados:
    cursor.execute("""
            INSERT INTO empregados (nome, cargo, salario)
            VALUES(?, ?, ?)
        """, (empregado['nome'],empregado['cargo'],empregado['salario']))

print("Dados inseridos com sucesso!")

conn.commit()
conn.close()