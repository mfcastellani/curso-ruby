class Greeting 
    def hi(pessoa)
        puts "Olá, #{pessoa}! Que seu dia seja lindo!"
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
gr.hi("Bruno Bastos")
gr.hi("Jessica")
gr.hi("Abraão Carvalho")
gr.hi("Lucas Lucatero")
