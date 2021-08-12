#add function
def add(a,b)
    (a+b).round(2)
end

#subtract function
def subtract(a,b)
    (a-b).round(2)
end

#Multiply function
def multiply(a,b)
    (a*b).round(2)
end

#divide function
def divide(a,b)
    if b != 0
        (a/b).round(2)
    else
        print 'Não é possível realizar divisão por zero. Tente novamente!'
    end
end