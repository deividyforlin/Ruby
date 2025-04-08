# map trabalha sem auterar o nome original da lista

nomes = ["João", "Maria", "José", "Pedro"]
dict = {nome: "Lucas", idade: 20, altura: 1.75}

nome="Deividy Fritsch"
nomes.each do |nome|
  puts nome
end

puts nome
puts "--------------------------------------------------------------"

nomes = ["João", "Maria", "José", "Pedro"]

nomes_completos = nomes.map do |nome_completo|
  nome_completo + " Fritsch"
end

puts nomes
puts "--------------------------------------------------------------"
puts nomes_completos