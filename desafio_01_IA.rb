# Código Ruby para remover elementos iguais a 'val' de uma lista
# Versão 1: Cria uma nova lista sem modificar a original

# Define a lista original de números
nums = [3, 2, 2, 3, 4]
# Define o valor que queremos remover
val = 3 

# Filtra os elementos diferentes de 'val':
# - reject cria uma nova lista excluindo os elementos que atendem à condição
# - O bloco { |num| num == val } verifica se cada elemento é igual a 'val'
filtered_nums = nums.reject { |num| num == val }

# Obtém o novo comprimento da lista filtrada
k = filtered_nums.length

# Exibe os resultados
puts "Nova lista: #{filtered_nums}"  # Mostra a lista sem os valores 'val'
puts "Novo comprimento (k): #{k}"    # Mostra quantos elementos restaram


# Versão 2: Modifica a lista original diretamente

# Redefine a lista original (pois foi modificada na versão anterior)
nums = [3, 2, 2, 3, 4]
val = 3

# Remove todos os elementos iguais a 'val' da lista original:
# - delete remove TODAS as ocorrências do valor especificado
# - Diferente do reject, isso altera a lista original diretamente
nums.delete(val)

# Obtém o novo comprimento da lista modificada
k = nums.length

# Exibe os resultados
puts "Lista modificada: #{nums}"    # Mostra a lista original alterada
puts "Novo comprimento (k): #{k}"  # Mostra quantos elementos restaram