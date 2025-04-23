require_relative 'spec_helper'
require 'roman_numeral_converter'

RSpec.describe RomanNumeralConverter::Converter do
  describe ".to_integer" do
    {
      'I' => 1,
      'IV' => 4,
      'IX' => 9,
      'XLII' => 42,
      'XCIX' => 99,
      'C' => 100,
      'CD' => 400,
      'D' => 500,
      'CM' => 900,
      'M' => 1000,
      'MMXIX' => 2019,
      'MMMCMXCIX' => 3999
    }.each do |roman, integer|
      it "converte #{roman} para #{integer}" do
        expect(described_class.to_integer(roman)).to eq(integer)
      end
    end
  end
end