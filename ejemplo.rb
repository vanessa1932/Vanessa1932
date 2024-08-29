class Padre
    def  say_hello
        saludo = "Hola desde #{self}"
        return saludo
    end
end

class Hijo < Padre
end


saluda1 = Padre.new
puts saluda1.say_hello

saludos2 = Hijo.new
puts saludos2.say_hello
