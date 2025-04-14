nomes = ["João", "Maria", "José", "Pedro"]
dict = {nome: "Lucas", idade: 20, altura: 1.75}

for nome in nomes do
 puts nome
end

for k, v, in dict do
  puts "#{k} => #{v}"
end