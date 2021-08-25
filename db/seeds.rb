
p "Clean de la DBz"
Cashback.destroy_all
Shop.destroy_all
User.destroy_all
p "Creation de quelques magazins"
# file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807748/shoptest1-f306e228af58d6f14a166e2044d3f9d9.jpg')
@shop1 = Shop.new(name: "Il Tores", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop1.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
@shop1.save!
# file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807750/shoptest2-01cae586bfe10359f70c4829cf24ec81.jpg')
@shop2 = Shop.new(name: "LE ZEN", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop2.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
@shop2.save!
# file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807751/shoptest3-9ec4a7cdfe3398fdd4db5e8a3b9446cd.jpg')
@shop3 = Shop.new(name: "Proxima", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop3.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
@shop3.save!
# file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807748/shoptest1-f306e228af58d6f14a166e2044d3f9d9.jpg')
@shop4 = Shop.new(name: "Del centrores", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop4.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
@shop4.save!
# file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807748/shoptest1-f306e228af58d6f14a166e2044d3f9d9.jpg')
@shop5 = Shop.new(name: "La margaritas", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop5.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
@shop5.save!
# file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807750/shoptest2-01cae586bfe10359f70c4829cf24ec81.jpg')
@shop6 = Shop.new(name: "Le tulipe", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop6.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
@shop6.save!
# file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807751/shoptest3-9ec4a7cdfe3398fdd4db5e8a3b9446cd.jpg')
@shop7 = Shop.new(name: "La platzia", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop7.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
@shop7.save!
# file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807748/shoptest1-f306e228af58d6f14a166e2044d3f9d9.jpg')
shop = Shop.new(name: "Le tabouret cent pieds", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
shop.save!
# file = URI.open('http://auvergne-centrefrance.com/hotels/haute-loire/moudeyres/photos/pre-bossu-max.jpg')
shop = Shop.new(name: "La clairière de derrière", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
shop.save!
# file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807750/shoptest2-01cae586bfe10359f70c4829cf24ec81.jpg')
shop = Shop.new(name: "Shopping", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
shop.save!
# file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807751/shoptest3-9ec4a7cdfe3398fdd4db5e8a3b9446cd.jpg')
shop = Shop.new(name: "Le coin du cercle", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
shop.save!
# file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807748/shoptest1-f306e228af58d6f14a166e2044d3f9d9.jpg')
shop = Shop.new(name: "La plage pavé", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
shop.save!
# file = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1629807750/shoptest2-01cae586bfe10359f70c4829cf24ec81.jpg')
shop = Shop.new(name: "Le lac salé", siret: 2147483647, address: "48 Avenue de la Plaine Bossue 06000 Nice")
# shop.photo.attach(io: file, filename: 'shoptest1.jpg', content_type: 'image/jpg')
shop.save!

p "Création des utilisateurs"
@user1 = User.create(email:"david@ducobu.com", password:"123456")
@user2 = User.create(email:"clarisse@hotmail.fr", password:"123456")
@user3 = User.create(email:"audrey@google.com", password:"123456")
p @user1.email
p @user1.password
p @user2.email
p @user2.password
p @user3.email
p @user3.password
p "generate some free cashback for the good of humanity"
casback = Cashback.create(amount: 2.23, user_id: @user1.id, shop_id: @shop1.id)
casback = Cashback.create(amount: 3.23, user_id: @user1.id, shop_id: @shop2.id)
casback = Cashback.create(amount: 2.23, user_id: @user2.id, shop_id: @shop3.id)
casback = Cashback.create(amount: 6.23, user_id: @user2.id, shop_id: @shop4.id)
casback = Cashback.create(amount: 2.23, user_id: @user3.id, shop_id: @shop5.id)
casback = Cashback.create(amount: 1.23, user_id: @user3.id, shop_id: @shop6.id)
