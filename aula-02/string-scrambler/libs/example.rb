# Este algoritimo pega uma frase e coloca
# as vogais em maiusculo, além de trocar o 
# espaço em branco por um .
#
# Exemplo:
# - Banana é uma ótima fonte de vitaminas
# - sAnImAtIv.Ed.EtnOf.AmItó.AmU.é.AnAnAb
#
# Responsável - Marcelo Castellani

def example_scrambler sentence
    # inverte a string
    sentence = sentence.reverse

    # coloca tudo em minusculo
    sentence = sentence.downcase

    # coloca as vogais em maiusculo
    new_sentence = ""
    sentence.chars.each do |char|
        if ["a", "e", "i", "o", "u"].include? char
            new_sentence += char.upcase
        elsif char == " "
            new_sentence += "."
        else
            new_sentence += char
        end
    end

    # retorna a frase modificada
    new_sentence
end