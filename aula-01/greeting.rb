class Greeting 
    def hi(coisa)
        puts "Olá, #{coisa}! Que seu dia seja lindo!"
    end

    def to_s
        "Classe Greeting"
    end
end

gr = Greeting.new
gr.hi("Marcelo")
gr.hi("Paulo Lins")
gr.hi("Jackson Lima")
gr.hi("Ana Paula")
gr.hi("Joao Gilberto")
gr.hi("Franco Caldas")
