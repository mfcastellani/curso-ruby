class Greeting 
    def hi(name)
        puts "Olá, #{name}! Que seu dia seja lindo!"
    end

    def to_s
        "Classe Greeting"
    end
end

gr = Greeting.new
gr.hi("Marcelo")
gr.hi(1)
gr.hi(Time.now)
gr.hi(gr)
