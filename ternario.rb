nome = "Deividy Fritsch"
n = 10

if nome == "Deividy Fritsch"
  puts "Ele é studante de Ruby"
else
  puts "Ele não estuda nada"
end

puts "--------------------------------------------------------------"

nome = "Deividy"

if nome.eql? "Diego A."
  puts "Ele é studante de Ruby"
else
  puts "Ele não estuda nada"
end

puts "--------------------------------------------------------------"

soma = n.eql?(10) ? n + 10 : n - 2
puts soma