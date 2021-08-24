p "Clean de la DBz"
Shop.destroy_all
p "Creation de quelques magazins"
Shop.create(name: "Il Tores", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")
Shop.create(name: "LE ZEN", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")
Shop.create(name: "Proxima", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")
Shop.create(name: "Del centrores", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")
Shop.create(name: "La margaritas", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")
Shop.create(name: "Le tulipe", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")
Shop.create(name: "La platzia", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")
Shop.create(name: "Le tabouret cent pieds", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")
Shop.create(name: "La clairière de derrière", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")
Shop.create(name: "Shopping", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")
Shop.create(name: "Le coin du cercle", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")
Shop.create(name: "La plage pavé", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")
Shop.create(name: "Le lac salé", siret: 28485795642152, address: "48 Avenue de la Plaine Bossue 06000 Nice")

p "Création des utilisateurs"
user1 = User.create(email:"david@ducobu.com", password:"123456")
user2 = User.create(email:"clarisse@hotmail.fr", password:"123456")
user3 = User.create(email:"audrey@google.com", password:"123456")
p user1.email
p user1.password
p user2.email
p user2.password
p user3.email
p user3.password