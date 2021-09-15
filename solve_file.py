# Importamos la IDE de lpsolve para python
from lpsolve55 import *
# Queremos acceder desde terminal directamente
from sys import argv

# El argumento extra que pasaremos por terminal será el nombre del arx lp
script, file_lp = argv
print(file_lp)

# Pasamos el modelo desde el arx (para no tener que abrirlo previo, LP)
modelo = lpsolve('read_LP', file_lp, 'NORMAL', 'lp model')

# Resolvemos y almacenamos en variables
ret = lpsolve('solve', modelo)

info = {}
info['Funcion Objetivo'] = lpsolve('get_objective', modelo)
info['Variables'] = lpsolve('get_variables', modelo)[0]

# Generamos el output
print("\n", "*" * 20)
print(f"The optimal objective function value is: {info['Funcion Objetivo']}")
print(f"The variables -- same sorting as in model: ")
for i in range(len(info['Variables'])):
	print("Variable ", i, " is ", info['Variables'][i])

