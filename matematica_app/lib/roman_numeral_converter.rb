module RomanNumeralConverter
  class Converter
    ROMAN_NUMERALS = {
      'M'  => 1000,
      'CM' => 900,
      'D'  => 500,
      'CD' => 400,
      'C'  => 100,
      'XC' => 90,
      'L'  => 50,
      'XL' => 40,
      'X'  => 10,
      'IX' => 9,
      'V'  => 5,
      'IV' => 4,
      'I'  => 1
    }.freeze

    def self.to_integer(roman)
      roman = roman.upcase
      result = 0
      str = roman.dup

      ROMAN_NUMERALS.each do |key, value|
        while str.start_with?(key)
          result += value
          str.slice!(0, key.length)
        end
      end

      result
    end
  end
end

if __FILE__ == $0
  # Teste automático quando o arquivo é executado diretamente
  puts "Teste automático: XIV => #{RomanNumeralConverter::Converter.to_integer('XIV')}"
end