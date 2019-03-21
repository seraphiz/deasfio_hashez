h = {"x": 1, "y":2}

#3.1
h[:z] = 3
puts h

puts "\n------------------------\n"

#3.2
h[:x] = 5
puts h
puts "\n------------------------\n"

#3.3
h.delete(:y)
puts h

puts "\n------------------------\n"

#3.4

if h.include? :z
  puts 'Yeah!'
end

puts "\n------------------------\n"

#3.5
puts h.invert
