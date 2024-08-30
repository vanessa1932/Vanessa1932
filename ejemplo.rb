class Padre
    def initialize (nombre)
    @nombre = nombre 
end 
    def  say_hello
       "Hola  #{@nombre} desde #{self}"
      
    end
end

class Hijo < Padre
end


saluda1 = Padre.new ("Darth")
puts saluda1.say_hello

saludos2 = Hijo.new ("Anakin")
puts saludos2.say_hello
