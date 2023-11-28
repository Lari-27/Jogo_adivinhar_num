require_relative 'inicializacao'
require_relative 'sortear_numero'


class AdivinharNumero
    attr_reader :numero
    attr_reader :venceu

def initialize
    Inicializacao.inicializando
    @numero = SortearNumero.sortear   #Random.rand(1..20)
    @venceu = false
end

def tentar_adivinhar(numero = 0)
    if numero == @numero
        @venceu = true
        return "Você VENCEU"
    elsif numero > @numero
        return "O número sorteado é menor..."
    else
        return "O número sorteado é maior..."
        end
    end
end 