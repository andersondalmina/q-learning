class Agent
  attr_accessor :estado_linha
  attr_accessor :estado_coluna
  attr_accessor :acoes

  def initialize
    @acoes = [:norte, :sul, :leste, :oeste]
    @estado_linha = 4
    @estado_coluna = 0
  end

  def pegar_direcao
    acoes = @acoes

    acoes.delete(:norte) if @estado_linha.zero?
    acoes.delete(:oeste) if @estado_coluna.zero?
    acoes.delete(:sul) if @estado_linha == 4
    acoes.delete(:leste) if @estado_coluna == 9

    direcao = acoes.sample
    andar(direcao)
  end

  def andar(direcao)
    case direcao
    when :norte
      @estado_linha -= 1
    when :sul
      @estado_linha += 1
    when :leste
      @estado_coluna += 1
    else
      @estado_coluna -= 1
    end
  end
end
