# frozen_string_literal: true

class Topico
  def programa_primeiro_programa
    puts "\nPrograma cálculo de horas."
    puts "\n-------------------------------------------------"
    puts "\nDigite o valor salário base do funcionário em R$"
    sb = gets.chomp.to_f
    # sb = 1200
    # puts "\nDigite o valor salário base do funcionário em R$"
    # puts sb
    puts 'Digite número de horas extras 50% do funcionário'
    he50 = gets.chomp.to_f
    # he50 = 5
    # puts "Digite número de horas extras 50% do funcionário"
    # puts he50
    puts 'Digite número de horas extras 100% do funcionário'
    he100 = gets.chomp.to_f
    # he100 = 5
    # puts "Digite número de horas extras 100% do funcionário"
    # puts he100
    puts "\n-------------------------------------------------"
    puts "\nResumo valores horas"
    puts "Valor do salário base           R$ #{sb}"
    v1h = (sb / 220).to_s # valor de 1 hora normal
    puts "Valor de 1 hora normal          R$ #{v1h.to_f.round(2)}"
    v1h50 = (sb / 220 * 1.5).to_s # valor de 1 hora 50%
    puts "Valor de 1 hora extra 50%       R$ #{v1h50.to_f.round(2)}"
    v1h100 = (sb / 220 * 2).to_s # valor de 1 hora 100%
    puts "Valor de 1 hora extra 100%      R$ #{v1h100.to_f.round(2)}"
    the50 = (v1h50.to_f * he50).round(2).to_s
    puts "\n-------------------------------------------------"
    puts "\nValor total horas extra 50%     R$ #{the50}"
    the100 = (v1h100.to_f * he100).round(2).to_s
    puts "Valor total horas extra 100%    R$ #{the100}"
    sbt1 = (the100.to_f + the50.to_f + sb).to_s
    sbt = sbt1.to_f.round(2)
    puts "Salário bruto                   R$ #{sbt}"
    puts "\n-------------------------------------------------"
    puts "\nRelação de Descontos"
    if (sbt > 1) && (sbt <= 1500.00)
      vt6 = sbt / 100 * 6
      puts "Desconto vale transporte 6%     R$ #{vt6.to_f.round(2)}"
    else
      vtf = 170.00
      puts "Desconto vale transporte        R$ #{vtf}"
    end
    puts 'O funcionário é isento de INSS' if sbt <= 0
    if (sbt > 0) && (sbt <= 1556.94)
      inss8 = sbt / 100 * 8.00
      puts "Desconto INSS 8%                R$ #{inss8.to_f.round(2)}"
    end
    if (sbt >= 1556.95) && (sbt <= 2594.92)
      inss9 = sbt / 100 * 9.00
      puts "Desconto INSS 9%                R$ #{inss9.to_f.round(2)}"
    end
    if (sbt >= 2594.93) && (sbt <= 5189.82)
      inss11 = sbt / 100 * 11.00
      puts "Desconto INSS 11%               R$ #{inss11.to_f.round(2)}"
    end
    if sbt > 5189.83
      inssl = 570.11
      puts "Desconto INSS max previdência   R$ #{inssl}"
    end
    puts 'O funcionário é isento de imposto de renda' if sbt <= 1903.89
    if (sbt >= 1903.90) && (sbt <= 2826.65)
      ir7 = sbt / 100 * 7.50
      puts "Desconto 7,5% imposto de renda  R$ #{ir7.to_f.round(2)}"
    end
    if (sbt >= 2826.66) && (sbt <= 3751.05)
      ir15 = sbt / 100 * 15.00
      puts "Desconto 15% imposto de renda   R$ #{ir15.to_f.round(2)}"
    end
    if (sbt >= 3751.06) && (sb <= 4664.68)
      ir22 = sbt / 100 * 22.50
      puts "Desconto 22,5% imposto de renda R$ #{ir22.to_f.round(2)}"
    end
    if sbt >= 4664.69
      ir27 = sbt / 100 * 27.50
      puts "Desconto 27,5% imposto de renda R$ #{ir27.to_f.round(2)}"
    end
    vr = (sbt.to_f - vt6.to_f - inss8.to_f - inss9.to_f - inss11.to_f - inssl.to_f - ir7.to_f - ir15.to_f - ir22.to_f - ir27.to_f - vtf.to_f).to_s
    vlr = vr.to_f.round(2)
    puts "\n-------------------------------------------------"
    puts "\nValor liquido a receber         R$ #{vlr}"
  end
end