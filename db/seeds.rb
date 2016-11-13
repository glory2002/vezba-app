# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


regions = [
  ["Шопски", "1.jpg",
  %{"Шопските шевици..."}],

  ["Ловешки","2.jpg",
  %{"Ловешките шевици..."}],

  ["Самоковски","3.jpg",
  %{"Самоковските шевици..."}],

  ["Капански","4.jpg",
  %{"Капанските шевици..."}],

  ["Видински","4.jpg",
  %{"Видинските шевици..."}],

  ["Русенски","4.jpg",
  %{"Видинските шевици..."}]

]

regions.each do |name, image, description|
  Region.create( name: name, image: image, description: description )
end


region_embroderies = {}

region_embroderies["Шопски"] = [
  ["Ръкав на женска риза", "1.1.jpg"],
  ["Пола", "2.1.jpg"],
  ["Ръкав на мъжка риза", "3.1.jpg"],
  ["Деколте", "4.1.jpg"],
  ["Престилка", "5.jpg"]
]

region_embroderies["Ловешки"] = [
  ["Ръкав на женска риза", "6.jpg"],
  ["Пола", "7.jpg"],
  ["Ръкав на мъжка риза", "8.jpg"],
  ["Деколте", "9.jpg"],
  ["Престилка", "10.jpg"]
]

region_embroderies["Самоковски"] = [
  ["Ръкав на женска риза", "11.jpg"],
  ["Пола", "12.jpg"],
  ["Ръкав на мъжка риза", "13.jpg"],
  ["Деколте", "14.jpg"],
  ["Престилка", "15.jpg"]
]

region_embroderies["Капански"] = [
  ["Ръкав на женска риза", "16.jpg"],
  ["Пола", "17.jpg"],
  ["Ръкав на мъжка риза", "18.jpg"],
  ["Деколте", "19.jpg"],
  ["Престилка", "20.jpg"]
]

region_embroderies["Видински"] = [
  ["Ръкав на женска риза", "16.jpg"],
  ["Пола", "17.jpg"],
  ["Ръкав на мъжка риза", "18.jpg"],
  ["Деколте", "19.jpg"],
  ["Престилка", "20.jpg"]
]


region_embroderies.each do | region_name, embrodery |
  region = Region.find_by(name: region_name )

  regions.each do | title, image |
    Embordery.create(name: name, region_id: region.id, image: image)
  end
end
