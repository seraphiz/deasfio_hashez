#Ejercicio 6: Operaciones típicas sobre un hash
#Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el
#precio de este.

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
valores = restaurant_menu.values
#1. Obtener el plato mas caro.
puts "1) El plato mas caro es #{restaurant_menu.key(valores.max)}" #sort.pop
#2. Obtener el plato mas barato.
puts "2) El plato mas barato es #{restaurant_menu.key(valores.min)}" #sort.shift
#3. Sacar el promedio del valor de los platos.
puts "3) El promedio de valor de los platos es #{(valores.sum / valores.count.to_f).round(2)}"
#4. Crear un arreglo con solo los nombres de los platos.
print "4) #{restaurant_menu.keys}\n"
#5. Crear un arreglo con solo los valores de los platos.
print "5) #{restaurant_menu.values}\n"
#6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
platos_con_iva = restaurant_menu.transform_values do |value|
    value * 1.19
  end
 print "6) #{platos_con_iva}\n"
#7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
platos_con_iva.each do |key, value|
    platos_con_iva[key] = (value * 0.8).round(2) if key.include? ' '
  end
  print "7) #{platos_con_iva}"