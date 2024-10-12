require 'faker'

# Resetear el generador único para evitar errores si ejecutas varias veces
Faker::UniqueGenerator.clear

# Crear datos para Location (Ubicaciones)
10.times do
  Location.create!(
    name: Faker::Address.unique.city
  )
end

# Crear datos para Category (Categorías)
10.times do
  Category.create!(
    name: Faker::Commerce.unique.department
  )
end

# Crear usuarios con Devise
5.times do
  User.create!(
    email: Faker::Internet.unique.email,
    password: 'password123',
    password_confirmation: 'password123'
  )
end

# Crear artículos asociados a ubicaciones y usuarios, con categorías
users = User.all
locations = Location.all
categories = Category.all

100.times do
  article = Article.create!(
    title: Faker::Book.unique.title,
    content: Faker::Lorem.paragraph(sentence_count: 10),
    location: locations.sample,
    user: users.sample,
    available: [true, false].sample # Valor aleatorio de disponibilidad
  )

  # Asociar el artículo con 1-3 categorías aleatorias
  article.categories << categories.sample(rand(1..3))
end

puts "Se han creado 10 ubicaciones, 10 categorías, 5 usuarios y 100 artículos."
