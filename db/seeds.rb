require "open-uri"
p "Clean de la DBz"
Shop.destroy_all
p "Creation de quelques magazins"
file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807748/shoptest1-f306e228af58d6f14a166e2044d3f9d9.jpg')
shop = Shop.new(name: "Il Tores", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
shop.save!
file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807750/shoptest2-01cae586bfe10359f70c4829cf24ec81.jpg')
shop = Shop.new(name: "LE ZEN", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.save!
file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807751/shoptest3-9ec4a7cdfe3398fdd4db5e8a3b9446cd.jpg')
shop = Shop.new(name: "Proxima", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.save!
file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807748/shoptest1-f306e228af58d6f14a166e2044d3f9d9.jpg')
shop = Shop.new(name: "Del centrores", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.save!
file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807748/shoptest1-f306e228af58d6f14a166e2044d3f9d9.jpg')
shop = Shop.new(name: "La margaritas", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.save!
file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807750/shoptest2-01cae586bfe10359f70c4829cf24ec81.jpg')
shop = Shop.new(name: "Le tulipe", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.save!
file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807751/shoptest3-9ec4a7cdfe3398fdd4db5e8a3b9446cd.jpg')
shop = Shop.new(name: "La platzia", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.save!
file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807748/shoptest1-f306e228af58d6f14a166e2044d3f9d9.jpg')
shop = Shop.new(name: "Le tabouret cent pieds", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.save!
file = URI.open('http://auvergne-centrefrance.com/hotels/haute-loire/moudeyres/photos/pre-bossu-max.jpg')
shop = Shop.new(name: "La clairière de derrière", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.save!
file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807750/shoptest2-01cae586bfe10359f70c4829cf24ec81.jpg')
shop = Shop.new(name: "Shopping", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.save!
file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807751/shoptest3-9ec4a7cdfe3398fdd4db5e8a3b9446cd.jpg')
shop = Shop.new(name: "Le coin du cercle", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.save!
file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807748/shoptest1-f306e228af58d6f14a166e2044d3f9d9.jpg')
shop = Shop.new(name: "La plage pavé", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.save!
file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807750/shoptest2-01cae586bfe10359f70c4829cf24ec81.jpg')
shop = Shop.new(name: "Le lac salé", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
shop.save!

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