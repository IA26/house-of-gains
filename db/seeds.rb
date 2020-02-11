# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gym.create(name: "Gold's", address: Faker::Address.full_address)
Gym.create(name: "YCMA", address: Faker::Address.full_address)
Gym.create(name: "Planet Fitness", address: Faker::Address.full_address)
Gym.create(name: "Blink", address: Faker::Address.full_address)
Gym.create(name: "NYSC", address: Faker::Address.full_address)
Gym.create(name: "I Love Kickboxing", address: Faker::Address.full_address)
Gym.create(name: "Equinox", address: Faker::Address.full_address)
Gym.create(name: "Crunch", address: Faker::Address.full_address)

