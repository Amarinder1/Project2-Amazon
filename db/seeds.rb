# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
Cart_Item.destroy_all
Cart.destroy_all

one = Item.create(name: "Apple iPhone 7 Plus", pic_url: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone7plus/model/iphone7plus-model-select-201703?wid=1200&hei=630&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=1489097365504", price: 800)
two = Item.create(name: "Samsung Galaxy S8", pic_url: "http://www.samsung.com/global/galaxy/galaxy-s8/images/gallery/galaxy-s8_gallery_front_black_s4.png", price: 900)
three = Item.create(name: "LG G6", pic_url: "http://www.lg.com/us/images/cell-phones/md05820872/G6-350.jpg", price: 800)
four = Item.create(name: "Google Pixel", pic_url: "http://i1-news.softpedia-static.com/images/news2/canadian-carrier-mistakenly-lists-white-google-pixel-and-black-pixel-xl-508857-2.png", price: 850)
five = Item.create(name: "Xiamoi Mi Mix 2", pic_url: "http://cdn2.gsmarena.com/vv/bigpic/xiaomi-mix-.jpg", price: 650)
six = Item.create(name: "Xbox One", pic_url: "http://compass.xbox.com/assets/e5/4a/e54a08ff-38e4-45a7-be4c-50fe5e92564b.jpg?n=Xbox_Family_Image-0_PS_496x279.jpg", price: 300)
seven = Item.create(name: "Playstation 4 Slim", pic_url: "https://target.scene7.com/is/image/Target/51265453_Alt03?wid=520&hei=520&fmt=pjpeg", price: 260)
eight = Item.create(name: "Nintendo Switch", pic_url: "http://www.nintendo.com/switch/etRgxnAu0zRX4bmWnt9K628wG7YQUI6t/images/switch/buy-now/bundle_color_console.jpg", price: 370)
nine = Item.create(name: "Spider-Man: Blue", pic_url: "https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/20798/20798._SX1280_QL80_TTD_.jpg", price: 11)
ten = Item.create(name: "Hulk: Gray", pic_url: "https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/24006/24006._SX1280_QL80_TTD_.jpg", price: 11)
eleven = Item.create(name: "Dardevil: Yellow", pic_url: "https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/18388/APR110721._SX1280_QL80_TTD_.jpg", price: 11)
twelve = Item.create(name: "Captain America: Whites", pic_url: "https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/334934/334934._SX1280_QL80_TTD_.jpg", price: 11)
thirteen = Item.create(name: "Microdermabrasion Face Scrub", pic_url: "https://images-na.ssl-images-amazon.com/images/I/81yI3WIs5mL._SX522_.jpg", price: 17)
fourteen = Item.create(name: "Dove Men+Care Body Wash", pic_url: "https://images-na.ssl-images-amazon.com/images/I/81Y1BU6f8QL._SX522_.jpg", price: 7)
fifteen = Item.create(name: "Backpack", pic_url: "https://images-na.ssl-images-amazon.com/images/I/91RqGTa6P4L._SY679_.jpg", price: 17)
sixteen = Item.create(name: "Folding Fire Pit", pic_url: "https://images-na.ssl-images-amazon.com/images/I/91IqLLLFa%2BL._SL1500_.jpg", price: 50)
seventeen = Item.create(name: "Samsung 55in 4K UHD Smart LED TV", pic_url: "https://images-na.ssl-images-amazon.com/images/I/815mq8Ync8L._SL1500_.jpg", price: 603)
eighteen = Item.create(name: "Bose Headphones", pic_url: "https://images-na.ssl-images-amazon.com/images/I/61QwytXOcxL._SL1500_.jpg", price: 329)
nineteen = Item.create(name: "Kate Spade Bracelet", pic_url: "https://images-na.ssl-images-amazon.com/images/I/61w7cpZvkYL._UX662_.jpg", price: 39)
twenty = Item.create(name: "Sapphire Pendant", pic_url: "https://images-na.ssl-images-amazon.com/images/I/71jbuFIiICL._UY662_.jpg", price: 37)
