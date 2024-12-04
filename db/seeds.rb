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

  # Crear 3 direcciones por cliente
  10.times do
    client.addresses.create(
      street: Faker::Address.street_name,
      ext_number: Faker::Address.building_number,
      int_number: rand(1..50).to_s, # Número interior aleatorio
      municipality: Faker::Address.community,
      city: Faker::Address.city,
      postal_code: Faker::Address.zip_code,
      address_type: %w[shipping billing].sample, # Envío o facturación
      status: [true, false].sample
    )
  end

  # Crear 3 motocicletas por cliente
  3.times do
    client.motorcycles.create(
      name: Faker::Vehicle.model,
      plate_number: Faker::Vehicle.license_plate,
      vin: Faker::Vehicle.vin,
      service_history: Faker::Date.backward(days: 365).strftime("%d %B %Y"), # Formato día mes año
      mileage: Faker::Number.between(from: 1000, to: 100000),
      status: [
        "Recepción", "Diagnóstico Inicial", "Asignado mecánico", "Pendiente de Piezas",
        "En Espera de Aprobación del Cliente", "En reparación", "Prueba de Rodaje", 
        "Ajuste de Detalles", "Entrega al Cliente", "Estado desconocido"
      ].sample
    )
  end
end

puts "Seed data created successfully!"

  