require 'faker'

# Resetear el generador único para evitar errores si ejecutas varias veces
Faker::UniqueGenerator.clear

# Crear datos para Location
10.times do
  Location.create!(
    name: Faker::Address.unique.city
  )
end

# Crear datos para Category
10.times do
  Category.create!(
    name: Faker::Commerce.unique.department
  )
end

puts "Se han creado 10 ubicaciones y 10 categorías ficticias sin repeticiones."
