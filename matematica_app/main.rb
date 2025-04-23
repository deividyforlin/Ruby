
begin
  # Tenta carregar como gem primeiro (caso esteja em desenvolvimento)
  require 'roman_numeral_converter'
rescue LoadError
  # Fallback: Carrega localmente com verificação explícita
  converter_path = File.expand_path('lib/roman_numeral_converter.rb', __dir__)
  
  if File.exist?(converter_path)
    require_relative 'lib/roman_numeral_converter'
  else
    abort "ERRO: Arquivo não encontrado em #{converter_path}\n" +
          "Verifique a estrutura do projeto!"
  end
end

# Adicione esta verificação para confirmar que a classe foi carregada
unless defined?(RomanNumeralConverter::Converter)
  abort "ERRO: A classe Converter não foi carregada corretamente!"
end

# Seu código principal com tratamento de erros
begin
  puts RomanNumeralConverter::Converter.to_integer('XIV')
rescue => e
  puts "Erro na conversão: #{e.message}"
end