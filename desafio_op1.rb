# Ejercicio 1: Ejercicios de bloques en Arrays
# Dado el array:
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
# 1. Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.
# 2. Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a
# float.
# 3. Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a
# string.
# 4. Utilizando reject descartar todos los elementos menores a 5 en el array.
# 5. Utilizando select descartar todos los elementos mayores a 5 en el array.
# 6. Utilizando inject obtener la suma de todos los elementos del array.
# 7. Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si
# son impares es otro grupo).
# 8. Utilizando group_by agrupar todos los números mayores y menores que 6.


b = a.map{|i| i+1}
print b

c = a.map{|i|i.to_f}
print c

d = a.map{|i|i.to_s}
print d

e = a.reject { |i| i<5 }
print e

f = a.select{|i| i<5}
print f

g = a.inject{|sum,i| sum +i}
print g

h =a.group_by{|i| i %2 == 0 }
print h

i  = a.group_by{|i| i>6}
print i