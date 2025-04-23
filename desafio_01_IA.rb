#Código Ruby para remover elementos iguais a 'val' de uma lista

nums = [3, 2, 2, 3, 4]
val = 3

# Filtra os elementos diferentes de 'val'
filtered_nums = nums.reject { |num| num == val }
k = filtered_nums.length

puts "Nova lista: #{filtered_nums}"
puts "Novo comprimento (k): #{k}"

#Versão alternativa (modificando a lista original):
#Se você quiser modificar a lista original em vez de criar uma nova:


nums = [3, 2, 2, 3, 4]
val = 3

# Remove todos os elementos iguais a 'val'
nums.delete(val)
k = nums.length

puts "Lista modificada: #{nums}"
puts "Novo comprimento (k): #{k}"