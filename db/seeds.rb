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

  ["Самоковски","1.jpg",
  %{"Самоковските шевици..."}],

  ["Капански","2.jpg",
  %{"Капанските шевици..."}],

  ["Видински","1.jpg",
  %{"Видинските шевици..."}],

  ["Русенски","2.jpg",
  %{"Видинските шевици..."}]

]

regions.each do |name, image, description|
  Region.create( name: name, image: File.open(File.join(Rails.root.join("test/fixtures/images/#{image}"))), description: description )
end


region_embroderies = {}

region_embroderies["Шопски"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "2.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"]
]

region_embroderies["Ловешки"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "1.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"]
]

region_embroderies["Самоковски"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "1.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"]
]

region_embroderies["Капански"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "2.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "2.jpg"],
  ["Престилка", "2.jpg"]
]

region_embroderies["Видински"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "1.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"]
]

region_embroderies["Русенски"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "1.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"]
]


region_embroderies.each do | region_name, embroderies |
  region = Region.find_by(name: region_name)

  embroderies.each do | name, image |
    Embrodery.create(name: name, region_id: region.id, image: File.open(File.join(Rails.root.join("test/fixtures/images/#{image}"))))
  end
end
