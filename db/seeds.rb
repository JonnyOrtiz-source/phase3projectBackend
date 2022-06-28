puts "🌱 Seeding spices..."

shoes_arr = [
  {
    shoe_name: "Nike Air",
    sex: "Female", 
    brand:"Nike", 
    image_url: "https://static.nike.com/a/images/f_auto/dpr_1.0,cs_srgb/w_787,c_limit/201c1476-e7ed-4e00-bbba-e4fb2e8598bd/nike-air.jpg"
  },
  {
    shoe_name: "Ghost 14",
    sex: "Male", 
    brand:"Brooks", 
    image_url: "https://www.brooksrunning.com/dw/image/v2/BGPF_PRD/on/demandware.static/-/Sites-brooks-master-catalog/default/dwed5294dd/original/110369/110369-310-l-ghost-14-mens-neutral-cushion-running-shoe.png?sw=443&sh=443&sm=fit"
    
  },
  {
    shoe_name: "Mayari",
    sex: "Female", 
    brand:"Birkenstock", 
    image_url: "https://www.birkenstock.com/on/demandware.static/-/Sites-master-catalog/default/dw5cb6ffe7/1019727/1019727.jpg"

  },
  {
    shoe_name: "The Point",
    sex: "Female", 
    brand:"Rothy's", 
    image_url: "https://cdn.shopify.com/s/files/1/0877/4986/products/002_ThePoint_Black_pdp_A_600x.jpg?v=1644265085"

  },
  {
    shoe_name: "Topsider",
    sex: "Male", 
    brand:"Sperry", 
    image_url: "https://s7d4.scene7.com/is/image/WolverineWorldWide/STS23921_000?wid=826&hei=685&resMode=bilin&op_usm=0.5,1.0,8,0&iccEmbed=0&printRes=72"

  },
]

shoes = shoes_arr.map{|attrs| Shoe.create(attrs)}

users_arr = [
  {
    first_name:"Allison", 
    last_name: "Ortiz", 
    username: "AO", 
    password:""
  },
  {
    first_name:"Jonny", 
    last_name: "Ortiz", 
    username: "JO", 
    password:""
  },
]

users = users_arr.map{|attrs| User.create(attrs)}

# UserShoes.create(shoe_type: "Sneakers", purchase_date: Date.new(2022,6,8), color: "White", size: "7.5", UPC: "123456789012", user_id: 1,shoe_id: 16)

# UserShoes.create(shoe_type: "Sneakers", purchase_date: Date.new(2021,9,17), color: "White/Red", size: "10.5", UPC: "234567890123", user_id: 2, shoe_id: 17)
# UserShoes.create(shoe_type: "Sandals", purchase_date: Date.new(2021,7,4), color: "Taupe", size: "7.5", UPC: "345678901234", user_id: 1, shoe_id: 18)
# UserShoes.create(shoe_type: "Flats", purchase_date: Date.new(2019,12,25), color: "Black", size: "7.5", UPC: "456789012345", user_id: 1, shoe_id: 19)
# UserShoes.create(shoe_type: "Boat Shoes", purchase_date: Date.new(2018,1,6),color: "Blue", size: "10.5", UPC: "567890123456", user_id: 2, shoe_id: 20)

puts "✅ Done seeding!"
