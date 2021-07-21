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

def algorithm_scrambler4 sentence4

    sentence4.reverse!

    sentence4.downcase!

    new_sentence = ""
    sentence.chars.each do |char|
        if ["a", "e", "i", "o", "u"].include? char
            new_sentence += char.downcase
        elsif char == " "
            new_sentence += "_"
        else
            new_sentence += char
        end
    end


    new_sentence
end