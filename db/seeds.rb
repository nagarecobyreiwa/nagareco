# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  first_name:"居附",
  last_name:"舜",
  first_name_kana:"イツキ",
  last_name_kana:"シュン",
  postcode:"3501212",
  address:"埼玉県和光市",
  phone_number:"08020553939",
  email:"a@a",
  password:"aaaaaa"
)

User.create(
  first_name:"牛",
  last_name:"君",
  first_name_kana:"ウシ",
  last_name_kana:"クン",
  postcode:"3534412",
  address:"東京都清瀬市",
  phone_number:"08021233444",
  email:"b@b",
  password:"bbbbbb"
)

User.create(
  first_name:"壁",
  last_name:"ちゃん",
  first_name_kana:"カベ",
  last_name_kana:"チャン",
  postcode:"9900912",
  address:"神奈川県",
  phone_number:"09056569987",
  email:"c@c",
  password:"cccccc"
)
