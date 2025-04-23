require File.expand_path('../lib/roman_numeral_converter', __FILE__)

unless defined?(RomanNumeralConverter::Converter)
  abort "Erro: A classe Converter não foi carregada corretamente!"
end

puts RomanNumeralConverter::Converter.to_integer('XIV')
