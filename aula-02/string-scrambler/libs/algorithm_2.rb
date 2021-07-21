# Este super algoritimo de embaralhamento de strings
# deverá remover todos os espaços em branco da string
# passada como parâmetro, inverter a order dela e 
# colocar todas as vogais em MAIUSCULAS.
# 
# Exemplo: 
# - Banana é uma ótima fonte de vitaminas
# - sAnImAtIvEdEtnOfAmItÓAmUÉAnAnAb"
#
# Responsáveis: - Douglas Martins Matos
#               - Franco Caldas
#               - Gabriela Batalha
#               - João Gilberto
#               - João Príscio

def algorithm_2 sentence
    # inverte a string
    sentence = sentence.reverse

    # retira os espaços e coloca as vogais em maiusculo
    new_sentence = ""
    sentence.chars.each do |char|
        if ["a", "e", "i", "o", "u"].include? char
            new_sentence += char.upcase
        elsif char == " "
            new_sentence += ""
        else
            new_sentence += char
        end
    end
    new_sentence
end