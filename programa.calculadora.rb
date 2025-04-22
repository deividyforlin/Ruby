puts "Digite o primeiro número:"
num1 = gets.chomp.to_f  
puts "Digite o segundo número:"
num2 = gets.chomp.to_f  
puts "Digite a operação desejada (+, -, *, /):"
operacao = gets.chomp  

r = case operacao
when "+"
  num1 + num2
when "-"
  num1 - num2
when "*"
  num1 * num2
when "/"
  num1 / num2
else
  "Operação inválida!"
end

puts "O resultado é: #{r}"