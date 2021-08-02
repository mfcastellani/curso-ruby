#Funcao somar
def somar(a,b)
    (a+b).round(2)
end

#Funcao diminuir
def diminuir(a,b)
    (a-b).round(2)
end

#Funcao multiplicar
def multiplicar(a,b)
    (a*b).round(2)
end

#Funcao dividir
def dividir(a,b)
    if b != 0
        (a/b).round(2)
    else
        print 'Não é possível realizar divisão por zero. Tente novamente!'
    end
end