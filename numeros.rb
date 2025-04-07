puts"Digite o primeiro numero."
x=gets.chomp.to_f
puts"Digite o sugundo numero."
y=gets.chomp.to_f
soma = x.to_f+y.to_f
sub = x.to_f-y.to_f
mult = x.to_f*y.to_f
div = x.to_f/y.to_f
puts"Resultado da soma: #{soma}"
puts"Resultado da subtração: #{sub}"
puts"Resultado da multiplicação: #{mult}"
puts"Resultado da divisão: #{div}"
puts"Resultado da média: #{(soma)/2}"
