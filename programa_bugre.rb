#!/usr/bin/env ruby 
# encoding: UTF-8

require 'date'

class Evento
  attr_accessor :data, :cliente, :valor_total, :valor_pago, :custos

  def initialize(data, cliente, valor_total)
    @data = Date.parse(data)
    @cliente = cliente
    @valor_total = valor_total.to_f
    @valor_pago = 0.0
    @custos = {}
  end

  def adicionar_pagamento(valor)
    @valor_pago += valor.to_f
  end

  def valor_pendente
    @valor_total - @valor_pago
  end

  def adicionar_custo(descricao, valor)
    @custos[descricao] = valor.to_f
  end

  def total_custos
    @custos.values.sum
  end

  def lucro
    @valor_total - total_custos
  end
end

class SalaoFestas
  # Caminho do arquivo onde os eventos serão salvos
  FILE_PATH = "eventos.dat"

  def initialize
    # Tenta carregar eventos do arquivo
    @eventos = carregar_eventos
  end

  def adicionar_evento(data, cliente, valor_total)
    if data_disponivel?(data)
      evento = Evento.new(data, cliente, valor_total)
      @eventos << evento
      puts "Evento adicionado com sucesso!"
      salvar_eventos # Salva os eventos após adicionar
      return evento
    else
      puts "Data já reservada!"
      return nil
    end
  end

  def data_disponivel?(data)
    data_parseada = Date.parse(data)
    @eventos.none? { |evento| evento.data == data_parseada }
  end

  def listar_eventos
    if @eventos.empty?
      puts "Nenhum evento cadastrado."
    else
      @eventos.each_with_index do |evento, index|
        puts "\nEvento #{index + 1}:"
        puts "Data: #{evento.data}"
        puts "Cliente: #{evento.cliente}"
        puts "Valor Total: R$#{evento.valor_total}"
        puts "Valor Pago: R$#{evento.valor_pago}"
        puts "Valor Pendente: R$#{evento.valor_pendente}"
        puts "Custos: R$#{evento.total_custos}"
        puts "Lucro: R$#{evento.lucro}"
      end
    end
  end

  def encontrar_evento(data)
    data_parseada = Date.parse(data)
    @eventos.find { |evento| evento.data == data_parseada }
  end

  private

  def carregar_eventos
    # Tenta carregar os eventos a partir do arquivo, se existir
    if File.exist?(FILE_PATH)
      File.open(FILE_PATH, 'rb') do |file|
        Marshal.load(file) # Carrega os objetos serializados
      end
    else
      [] # Se o arquivo não existir, retorna uma lista vazia
    end
  end

  def salvar_eventos
    # Salva os eventos em um arquivo
    File.open(FILE_PATH, 'wb') do |file|
      Marshal.dump(@eventos, file) # Serializa os objetos e salva no arquivo
    end
  end
end

# Exemplo de uso
def menu
  salao = SalaoFestas.new

  loop do
    puts "\n=== Sistema de Gerenciamento do Salão ==="
    puts "1. Adicionar novo evento"
    puts "2. Adicionar pagamento"
    puts "3. Adicionar custo"
    puts "4. Listar todos os eventos"
    puts "5. Sair"
    print "Escolha uma opção: "
    
    opcao = gets.chomp.to_i

    case opcao
    when 1
      print "Data (DD/MM/YYYY): "
      data = gets.chomp
      print "Nome do cliente: "
      cliente = gets.chomp
      print "Valor total: "
      valor = gets.chomp
      salao.adicionar_evento(data, cliente, valor)

    when 2
      print "Data do evento (DD/MM/YYYY): "
      data = gets.chomp
      evento = salao.encontrar_evento(data)
      if evento
        print "Valor do pagamento: "
        valor = gets.chomp
        evento.adicionar_pagamento(valor)
        puts "Pagamento registrado!"
        salao.salvar_eventos # Salva os eventos após a modificação
      else
        puts "Evento não encontrado!"
      end

    when 3
      print "Data do evento (DD/MM/YYYY): "
      data = gets.chomp
      evento = salao.encontrar_evento(data)
      if evento
        print "Descrição do custo: "
        descricao = gets.chomp
        print "Valor do custo: "
        valor = gets.chomp
        evento.adicionar_custo(descricao, valor)
        puts "Custo registrado!"
        salao.salvar_eventos # Salva os eventos após a modificação
      else
        puts "Evento não encontrado!"
      end

    when 4
      salao.listar_eventos

    when 5
      puts "Saindo..."
      break

    else
      puts "Opção inválida!"
    end
  end
end

# Iniciar o programa
menu
