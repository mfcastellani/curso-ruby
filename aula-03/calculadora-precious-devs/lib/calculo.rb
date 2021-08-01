def calculo operacao, numero1, numero2
  numero1 = numero1.to_f
  numero2 = numero2.to_f

  resultado = case operacao   
  when '1' 
    numero1 + numero2
  when '+'
    numero1 + numero2
  when '2'
    numero1 - numero2
  when '-'
    numero1 - numero2
  when '3'
    numero1 * numero2
  when '*'
    numero1 * numero2
  when '4'
    numero1 / numero2
  when '/'
    numero1 / numero2
  end
  resultado
end