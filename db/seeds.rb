require 'open-uri'

p "------ Starting creating data ----------"
User.destroy_all
p "------ All users Destroyed ----------"
Garage.destroy_all
p "------ All garages Destroyed ----------"
user1 = User.create(email: "mathieu@gmail.com", password: "123456", name: "Mathieu")
user2 = User.create(email: "dorian@gmail.com", password: "123456", name: "Dorian")
user3 = User.create(email: "jernito@gmail.com", password: "123456",name: "Jernito")
user4 = User.create(email: "eva@gmail.com", password: "123456", name: "Eva")

p "------ #{User.count} user created ----------"
# Garage.create(titre: "le manoir", address: "13 rue du chemin vert, Boulogne-sur-mer", price: 150, user: user1)
file = URI.open("https://cdn-fr.priximbattable.net/402846-large_default/garage-5-x-3m-toit-plat.jpg")
garage = Garage.new(titre: "le manoir", address: "13 rue du chemin vert, Boulogne-sur-mer", price: 150, user: user1)
garage.photo.attach(io: file, filename: "manoir.png", content_type: "image/png")
garage.save
# Garage.create(titre: "la place du chef", address: "3 avenue de la serane, Marseille", price: 200, user: user2)
file = URI.open("https://cdn-s-www.estrepublicain.fr/images/D72C5AFF-352C-400E-B322-A037903C2552/NW_raw/vous-n-avez-pas-de-double-taxe-d-habitation-a-payer-si-votre-garage-est-situe-a-plus-de-1-km-de-votre-logement-illustration-adobe-stock-1636569236.jpg")
garage = Garage.new(titre: "la place du chef", address: "3 avenue de la serane, Marseille", price: 200, user: user2)
garage.photo.attach(io: file, filename: "chef.png", content_type: "image/png")
garage.save
# Garage.create(titre: "big place", address: "2 avenue des saules, Lille", price: 300, user: user3)
file = URI.open("https://www.diagral.fr/wp-content/uploads/2018/12/motorisation-porte-garage-735x490.jpg")
garage = Garage.new(titre: "big place", address: "2 avenue des saules, Lille", price: 300, user: user3)
garage.photo.attach(io: file, filename: "big.png", content_type: "image/png")
garage.save
# Garage.create(titre: "la finesse incarnée", address: "12 boulevard vauban, Lille", price: 450, user: user4)
file = URI.open("https://www.zapf-garages.fr/wp-content/uploads/2021/03/image-droite.jpg")
garage = Garage.new(titre: "la finesse incarnée", address: "12 boulevard vauban, Lille", price: 450, user: user4)
garage.photo.attach(io: file, filename: "finesse.png", content_type: "image/png")
garage.save
# Garage.create(titre: "le poulpe", address: "568 rue de l'avenir, lille", price: 100, user: user1)
file = URI.open("https://maison.20minutes.fr/wp-content/uploads/2021/11/construction-garage-double.jpg")
garage = Garage.new(titre: "le poulpe", address: "568 rue de l'avenir, lille", price: 100, user: user1)
garage.photo.attach(io: file, filename: "poulpe.png", content_type: "image/png")
garage.save
# Garage.create(titre: "la place du chicour", address: "17 avenue du général de gaulle, lille", price: 400, user: user2)
file = URI.open("https://www.virages.com/Images/Blog/Places-de-Parking.jpg")
garage = Garage.new(titre: "la place du chicour", address: "17 avenue du général de gaulle, lille", price: 50, user: user2)
garage.photo.attach(io: file, filename: "chicour.png", content_type: "image/png")
garage.save
# Garage.create(titre: "le parking adoré", address: "2 rue du terroir, Lille", price: 300, user: user3)
file = URI.open("https://www.ambiances-bois.com/wp-content/uploads/2021/11/carport-toit-plat-bois-scaled.jpg")
garage = Garage.new(titre: "le parking adoré", address: "2 rue du terroir, Lille", price: 300, user: user3)
garage.photo.attach(io: file, filename: "adoree.png", content_type: "image/png")
garage.save
# Garage.create(titre: "l'unique", address: "17 boulevard vauban, Lille", price: 750, user: user4)
file = URI.open("https://cdn.motor1.com/images/mgl/bpQ0M/s1/luxury-garage-home.jpg")
garage = Garage.new(titre: "l'unique", address: "17 boulevard vauban, Lille", price: 750, user: user4)
garage.photo.attach(io: file, filename: "unique.png", content_type: "image/png")
garage.save

p "------ #{Garage.count} garage created ----------"
