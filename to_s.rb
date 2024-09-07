class Persona
    def initialize(nombre)
      @nombre = nombre
    end
  end
  
  persona = Persona.new("Vanssa ")
  puts persona.to_s  # Salida: #<Persona:0x00007fe18c8b5b30>
  