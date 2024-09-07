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

  def actualizar_texto(nuevo_texto)
    @texto = nuevo_texto
  end
end

texto = "Esta es la segunda tarea. Esta es la Segunda Practica."
contador = ContadorPalabras.new(texto)
resultado = contador.palabras_repetidas

puts "Palabras repetidas en el texto inicial:"
resultado.each do |palabra, cantidad|
  puts "#{palabra} #{cantidad} veces repetidas"
end

contador.actualizar_texto("Este es un nuevo texto. Este es un ejemplo para contar palabras.")

nuevo_resultado = contador.palabras_repetidas

puts "\nPalabras repetidas en el texto actualizado:"
nuevo_resultado.each do |palabra, cantidad|
  puts "#{palabra} #{cantidad} veces repetidas"
end
