#Desafio Hashes

#Ejercicio 1

h = { claveuno: 10, clavedos: 20, clavetres: 30}

#Ejercicio 2.1

productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

productos.each { |producto, valor| puts producto }

puts "\n------------------------\n"

#Ejercicio 2.2

productos['cereal'] = 2200

puts print productos

puts "\n------------------------\n"

#Ejercicio 2.3

productos['bebida'] = 2000
puts productos

puts "\n------------------------\n"
#Ejercicio2.4

array = productos.to_a
print array

puts "\n------------------------\n"

#Ejercicio 2.5
productos.delete('galletas')
puts productos

puts "\n------------------------\n"
