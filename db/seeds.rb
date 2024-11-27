# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
10.times do
    client = Client.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      phone: Faker::PhoneNumber.phone_number
    )
  
    3.times do
        client.motorcycles.create(
          name: Faker::Vehicle.model,
          plate_number: Faker::Vehicle.license_plate,
          vin: Faker::Vehicle.vin,
          service_history: Faker::Date.backward(days: 365).strftime("%d %B %Y"), # Format to day month year
          mileage: Faker::Number.between(from: 1000, to: 100000),
          status: [
            "Recepción", "Diagnóstico Inicial", "Asignado mecánico", "Pendiente de Piezas",
            "En Espera de Aprobación del Cliente", "En reparación", "Prueba de Rodaje", 
            "Ajuste de Detalles", "Entrega al Cliente", "Estado desconocido"
          ].sample
        )
      end      
  end
  