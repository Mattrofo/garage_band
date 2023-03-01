# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
p "------ Starting creating data ----------"
User.destroy_all
p "------ All users Destroyed ----------"
Garage.destroy_all
p "------ All garages Destroyed ----------"
user1 = User.create(email: "mathieu@gmail.com", password: "123456")
user2 = User.create(email: "dorian@gmail.com", password: "123456")
user3 = User.create(email: "jernito@gmail.com", password: "123456")
user4 = User.create(email: "eva@gmail.com", password: "123456")

p "------ #{User.count} user created ----------"
Garage.create(titre: "le manoir", address: "13 rue du chemin vert", price: 150, user: user1)
Garage.create(titre: "la place du chef", address: "364 allée des roux", price: 200, user: user2)
Garage.create(titre: "big place", address: "1 rue du champion", price: 300, user: user3)
Garage.create(titre: "la finesse incarnée", address: "210 avenue le savon", price: 450, user: user4)

p "------ #{Garage.count} garage created ----------"
