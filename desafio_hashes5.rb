#Ejercicio 5: Array y Hashes
#Dados los siguientes array:

meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

#Generar un hash que contenga los meses como llave y las ventas como valor:
#h = {'Enero': 2000, 'Febrero': 3000 ... }

#En base al hash generado:



hash = Hash[meses.zip(ventas)]
puts hash
puts "\n------------------------\n"
#1. Invertir las llaves y los valores del hash.
puts hash.invert
puts "\n------------------------\n"
#2. Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
new_h = hash.invert
puts new_h.values_at(new_h.keys.max)