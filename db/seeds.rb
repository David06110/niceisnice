
p "Clean de la DBz"
Cashback.destroy_all
Shop.destroy_all
User.destroy_all
p "Creation de quelques magazins"
file1 = URI.open('https://www.paxavenue.com/specific_files/5/1/3/4/proxi.jpg?update=20210128120534')
file2 = URI.open('https://ville-data.com/magasin/image/supermarket.jpg')
@shop1 = Shop.new(name: "Proxi", raw_name: "PROXI SUPR", siret: 2147483647, address: "16 Avenue Thiers 06000 NICE", longitude: 43.7029176, latitude: 7.2574088)
 @shop1.photos.attach(io: file1, filename: 'photo1.jpg', content_type: 'image/jpg')
 @shop1.photos.attach(io: file2, filename: 'photo2.jpg', content_type: 'image/jpg')
 @shop1.save!
 @shop1.active = true
 p "Magazin de référence"
 p @shop1 
 file1 = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1630416232/orven1-a6eb3ed3c6cdfb43c4b12b31fa1fd3d2.png')
 file2 = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1630416233/orven2-f7e5d19c8f183d74650caad1fdb9bc80.jpg')
 @shop2 = Shop.new(name: "Orven Chimney Cake", raw_name: "Orven Chimney Cake", siret: 2147483647, address: "18 Avenue Thiers 06000 Nice", longitude: 43.7032381, latitude: 7.2592672)
  @shop2.photos.attach(io: file1, filename: 'photo1.jpg', content_type: 'image/jpg')
  @shop2.photos.attach(io: file2, filename: 'photo2.jpg', content_type: 'image/jpg')
  @shop2.save!
  p @shop2 
  file1 = URI.open('https://10619-2.s.cdn12.com/rests/original/105_507982762.jpg')
 file2 = URI.open('https://storage.googleapis.com/mon-resto-halal/restaurants/3438e47c-a042-42fb-8551-fc2ef04b79e3/thumb@1024_24727d9b-a4e5-41e5-996a-6a72f50d4708.jpg')
 @shop3 = Shop.new(name: "O’Tacos", raw_name: "O’Tacos Nice Gare", siret: 2147483647, address: "13 Avenue Thiers 06000 Nice", longitude: 43.7038263, latitude: 7.2612931)
  @shop3.photos.attach(io: file1, filename: 'photo1.jpg', content_type: 'image/jpg')
  @shop3.photos.attach(io: file2, filename: 'photo2.jpg', content_type: 'image/jpg')
  @shop3.save!
 p @shop3
 file1 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/12/a2/6b/f5/pizza-au-feu-de-bois.jpg')
  file2 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/12/a5/f6/0f/notre-devanture.jpg')
 @shop4 = Shop.new(name: "La pizza au feu de bois", raw_name: "La pizza au feu de bois", siret: 2147483647, address: "37 Av. Auber, 06000 Nice", longitude: 43.7037565, latitude: 7.260864)
  @shop4.photos.attach(io: file1, filename: 'photo1.jpg', content_type: 'image/jpg')
  @shop4.photos.attach(io: file2, filename: 'photo2.jpg', content_type: 'image/jpg')
  @shop4.save!
 p @shop4
 file1 = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1630416237/saison1-226c2df5eb8e0d3bff686411a72de017.jpg')
  file2 = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1630416243/saison2-62192b542fe5b4c9fffb8e1991f4c230.png')
 @shop5 = Shop.new(name: "Les 4 Saisons", raw_name: "Les 4 Saisons", siret: 2147483647, address: "12 Rue d'Italie, 06000 Nice", longitude: 43.7031903, latitude: 7.2576537)
  @shop5.photos.attach(io: file1, filename: 'photo1.jpg', content_type: 'image/jpg')
  @shop5.photos.attach(io: file2, filename: 'photo2.jpg', content_type: 'image/png')
  @shop5.save!
  p @shop5
  file2 = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1630416201/boucherie1-fac01ddc81f088dfa052ca4c8f776236.jpg')
  file1 = URI.open('https://res.cloudinary.com/dcmbxjvgh/image/asset/v1630416201/boucherie2-80d4ff683d9db8ce1dcb66bd32a200dd.jpg')
 @shop6 = Shop.new(name: "Boucherie de la gare", siret: 2147483647, address: "45 Avenue Thiers, 06000 Nice", longitude: 43.7014103, latitude: 7.2563984)
  @shop6.photos.attach(io: file1, filename: 'photo1.jpg', content_type: 'image/jpg')
  @shop6.photos.attach(io: file2, filename: 'photo2.jpg', content_type: 'image/jpg')
  @shop6.save!
  p @shop6 

 

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
casback = Cashback.create(amount: 4.23, user_id: @user2.id, shop_id: @shop3.id)
casback = Cashback.create(amount: 6.23, user_id: @user2.id, shop_id: @shop4.id)
casback = Cashback.create(amount: 2.23, user_id: @user3.id, shop_id: @shop5.id)
casback = Cashback.create(amount: 1.23, user_id: @user3.id, shop_id: @shop6.id)
