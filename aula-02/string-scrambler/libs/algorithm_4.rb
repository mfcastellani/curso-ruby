# Este super algoritimo de embaralhamento de strings
# deverá trocar os espaços em branco por _ da string 
# passada como parâmetro, inverter a order dela e 
# colocar todas as consoantes em MAIUSCULAS.
# 
# Exemplo: 
# - Banana é uma ótima fonte de vitaminas
# - SaNiMaTiV_eD_eTNoF_aMiTó_aMu_é_aNaNaB
#
# Responsáveis: - Micael Marques
#               - Mizael Nazareno
#               - Paulo Castro
#               - Paulo Lins
#               - Victor Guedes
def example_scrambler4 sentence
    # inverte a string e deixa tudo em minusculo
    sentence = sentence.reverse.downcase

    # coloca as consoantes em maiusculo
    new_sentence = ""
    sentence.chars.each do |char|
        if ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "y", "z"].include? char
            new_sentence += char.upcase
        elsif char == " "
            new_sentence += "_"
        else
            new_sentence += char
        end
    end
    # retorna a frase modificada
    new_sentence
end
