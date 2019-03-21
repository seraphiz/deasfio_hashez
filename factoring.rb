def read_products(file_name)
  file = File.open(file_name, 'r')
  products = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
  file.close
  products
end

arreglo_de_productos = read_products('inventario.csv')


#Opcion 1
def menu
  puts '-----------------------------'
  puts 'Opcion 1) Mostrar productos'
  puts 'Opcion 2) Stock total'
  puts 'Opcion 3) Mayor stock'
  puts 'Opcion 4) Menor stock'
  puts 'Opcion 5) Stock 0'
  puts 'Opcion 6) Consultar producto'
  puts 'Opcion 7) Salir'
  puts '-----------------------------'
end

menu
puts 'Ingrese una opción:'
opcion = gets.chomp.to_i

while opcion !=7
  if opcion == 1
    arreglo_de_productos.each do |producto|
      nombre = producto[0]
      stock = producto[1..-1].join(' ')
      puts "\n#{nombre}: #{stock}"
    end
  elsif opcion == 2
    arreglo_de_productos.each do |producto|
      nombre = producto[0]
      stock = producto[1..-1].map { |num| num.to_i }
      total = stock.sum
      puts "\n#{nombre}: #{total}"
    end
  elsif opcion == 3
    winner = ''
    total_temporal = 0
    arreglo_de_productos.each do |producto|
      nombre = producto[0]
      stock = producto[1..-1].map { |num| num.to_i }
      total = stock.sum

      if total > total_temporal
        total_temporal = total
        winner = nombre
      end
    end
    puts "El producto con mayor stock: #{winner}"
  elsif opcion == 4
    loser = ''
    total_temporal = arreglo_de_productos[0].map { |num| num.to_i }.sum #el [1..-1] no es necesario ya que si hay una suma, la letra no molestra, automaticamente pasará a 0

    arreglo_de_productos.each do |producto|
      nombre = producto[0]
      stock = producto.map { |num| num.to_i }
      total = stock.sum

      if total < total_temporal
        total_temporal = total
        loser = nombre
      end
    end
    puts "El producto con menor stock: #{loser}"
  elsif opcion == 5
    arreglo_de_productos.each do |producto|
      puts "#{producto.first} tiene stock 0" if producto.include? '0'
    end
  elsif opcion == 6
    puts 'Ingresa un producto'
    consulta = gets.chomp.capitalize
    existe = false

    arreglo_de_productos.each do |producto|
      existe = true if producto.include? consulta
    end
      if existe
        puts "Existe #{consulta}"
      else
        puts "No existe #{consulta}"
    end
  else
    puts 'Ingrese una opcion valida'
  end

    puts ''
    menu
    puts 'Ingrese una opción:'
    opcion = gets.chomp.to_i

end

puts 'Adios'
