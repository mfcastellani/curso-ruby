class Calc
  def sum(num1, num2)
    # fazer soma de dois números
    num1 + num2
  end

  def substract(num1, num2)
    # fazer soma de dois números
    num1 - num2
  end

  def multiply(num1, num2)
    # fazer multiplicação
    num1 * num2
  end

  def divide(num1, num2)
    # fazer divisao
    if num2.zero?
      return puts 'Não existe divisão por zero'
    else
      num1 / num2
    end 
  end
end
