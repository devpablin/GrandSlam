# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
  Pmplayer.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    fechanacimiento: Faker::Date.birthday(18, 40)
  )
end

50.times do
  Pmtrainer.create(
    nombre: Faker::Name.first_name,
    apellido: Faker::Name.last_name,
  )
end

30.times do
  Pmnationality.create(
    name: Faker::Nation.nationality
  )
end

40.times do
  Pmcountry.create(
    name: Faker::Address.country
  )
end

50.times do
  Pmreferee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
  )
end
