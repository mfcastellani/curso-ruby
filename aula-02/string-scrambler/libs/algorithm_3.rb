# Este super algoritimo de embaralhamento de strings
# deverá trocar os espaços em branco por * da string
# passada como parâmetro, inverter a order dela e 
# colocar todas as vogais em MAIUSCULAS.

def alg3_scrambler sentence
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
            new_sentence += "*"
        else
            new_sentence += char
        end
    end

    # retorna a frase modificada
    new_sentence
end

