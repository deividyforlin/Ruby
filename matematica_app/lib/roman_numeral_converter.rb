# Define um módulo para agrupar a funcionalidade relacionada a conversão de numerais romanos
module RomanNumeralConverter
  # Define uma classe responsável pela conversão de números romanos para inteiros
  class Converter
    # Um hash com os símbolos romanos como chaves e seus valores numéricos como valores
    ROMAN_NUMERALS = {
      'M'  => 1000,
      'CM' => 900,   # 1000 - 100
      'D'  => 500,
      'CD' => 400,   # 500 - 100
      'C'  => 100,
      'XC' => 90,    # 100 - 10
      'L'  => 50,
      'XL' => 40,    # 50 - 10
      'X'  => 10,
      'IX' => 9,     # 10 - 1
      'V'  => 5,
      'IV' => 4,     # 5 - 1
      'I'  => 1
    }.freeze # Congela o hash para garantir que ele não será modificado em tempo de execução

    # Método de classe que converte uma string com número romano em um número inteiro
    def self.to_integer(roman)
      roman = roman.upcase      # Garante que a string esteja em maiúsculas (por segurança)
      result = 0                # Variável acumuladora do valor final
      str = roman.dup           # Cria uma cópia da string para não modificar o argumento original

      # Itera sobre cada símbolo romano e seu valor numérico
      ROMAN_NUMERALS.each do |key, value|
        # Enquanto a string restante começar com o símbolo atual (ex: 'X', 'IV' etc)
        while str.start_with?(key)
          result += value           # Adiciona o valor correspondente ao resultado
          str.slice!(0, key.length) # Remove os caracteres já processados do início da string
        end
      end

      result  # Retorna o valor final convertido
    end
  end
end

# Se o arquivo for executado diretamente (e não importado como biblioteca)
if __FILE__ == $0
  # Imprime o resultado da conversão de 'XIV' (14) como teste
  puts "Teste automático: XIV => #{RomanNumeralConverter::Converter.to_integer('XIV')}"
  # Mensagem de debug indicando que o arquivo foi executado com sucesso
  puts "Debug: roman_numeral_converter.rb carregado com sucesso!"
end
