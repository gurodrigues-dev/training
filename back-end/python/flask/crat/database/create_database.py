import sqlite3

conn = sqlite3.connect('enterprise.db')

cursor = conn.cursor()

cursor.execute("""
            CREATE TABLE empregados (
                id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
                name TEXT NOT NULL,
                cargo TEXT,
                salario REAL
            );
""")

print("Tabela criada com sucesso!")