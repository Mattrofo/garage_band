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
Garage.create(titre: "le manoir", address: "13 rue du chemin vert, Boulogne-sur-mer", price: 150, user: user1)
Garage.create(titre: "la place du chef", address: "3 avenue de la serane, Marseille", price: 200, user: user2)
Garage.create(titre: "big place", address: "2 avenue des saules, Lille", price: 300, user: user3)
Garage.create(titre: "la finesse incarnée", address: "12 boulevard vauban, Lille", price: 450, user: user4)
Garage.create(titre: "le poulpe", address: "568 rue de l'avenir, lille", price: 100, user: user1)
Garage.create(titre: "la place du chicour", address: "17 avenue du général de gaulle, lille", price: 400, user: user2)
Garage.create(titre: "le parking adoré", address: "2 rue du terroir, Lille", price: 300, user: user3)
Garage.create(titre: "l'unique", address: "17 boulevard vauban, Lille", price: 750, user: user4)

p "------ #{Garage.count} garage created ----------"
