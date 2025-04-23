Gem::Specification.new do |spec|
  spec.name          = "roman_numeral_converter"
  spec.version       = RomanNumeralConverter::VERSION
  spec.authors       = ["Seu Nome"]
  spec.email         = ["seu@email.com"]

  spec.summary       = "Conversor de números romanos para inteiros"
  spec.description   = "Uma gem Ruby para converter números romanos em números inteiros"
  spec.homepage      = "https://github.com/seu-usuario/roman_numeral_converter"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"] + Dir["bin/*"] + %w[README.md LICENSE.txt]
  spec.bindir        = "bin"
  spec.executables   = ["roman"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.0"
end