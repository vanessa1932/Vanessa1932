class ContadorPalabras
    attr_accessor :texto
  
    def initialize(texto)
      @texto = texto
    end
  
    def palabras_repetidas
    
      palabras = @texto.downcase.scan(/\w+/)
      
      contador = Hash.new(0)
      
      palabras.each do |palabra|
        contador[palabra] += 1
      end

      contador
    end
  end
  
  texto = "Esta es la segunda tarea. Esta es la Segunda Practica."
  contador = ContadorPalabras.new(texto)
  resultado = contador.palabras_repetidas
  
  resultado.each do |palabra, cantidad|
    puts "#{palabra} #{cantidad} veces repetidas"
  end
