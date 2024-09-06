require 'faker'

singers = []

100.times do
    singer = {
        Nombre: Faker::Music.band,
        Domicilio: Faker::Address.full_address,
        Email: Faker::Internet.email
    }

    singers << singer
end

singers.each_with_index do |singer, index|
   puts " "
   puts"#{index + 1}."
   puts "Nombre: #{singer[:Nombre]}"
   puts "Domicilio: #{singer[:Domicilio]}"
   puts "Email: #{singer[:Email]}"
   
end