# Este super algoritimo de embaralhamento de strings
# deverá remover todos os espaços em branco da string
# passada como parâmetro, inverter a order dela e 
# colocar todas as consoantes em MAIUSCULAS.
# 
# Exemplo: 
# - Banana é uma ótima fonte de vitaminas
# - SaNiMaTiVeDeTNoFaMiTóaMuéaNaNaB
#
# Responsáveis: - Abraão Carvalho
#               - Ana Paula Rocha
#               - Breno Castellani
#               - Bruno Bastos Duarte
#               - Caio Victor

def algorithm_1 sentence
  # remover espaços em branco
  sentence = sentence.gsub(/ /, '')

  # inverter a ordem
  sentence = sentence.reverse

  # colocar consoantes em maiúsculo
  new_sentence = ""
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m","ç", "n", "p", "q", "r", "s", "t", "v", "x", "y", "z"]
  sentence.chars.each do |char|
      if consonants.include? char
          new_sentence += char.upcase
      else
          new_sentence += char
      end
  end

  # retorna a frase modificada
  new_sentence
end
