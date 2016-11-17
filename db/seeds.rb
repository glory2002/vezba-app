# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


regions = [
  ["Самоковска", "samokovksa.jpg",
  %{"Шопските шевици..."}],

  ["Ловешкa","loveshka.jpg",
  %{"Ловешките шевици..."}],

  ["Софийска","sofiiska.jpg",
  %{"Самоковските шевици..."}],

  ["Капанска","kapanska.jpg",
  %{"Капанските шевици..."}],

  ["Видинска","vidinska.jpg",
  %{"Видинските шевици..."}],

  ["Разлошка","razlojka.jpg",
  %{"Видинските шевици..."}]

]

regions.each do |name, image, description|
  Region.create( name: name, image: File.open(File.join(Rails.root.join("test/fixtures/images/#{image}"))), description: description )
end


region_embroderies = {}

region_embroderies["Самоковска"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "2.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"]
]

region_embroderies["Ловешкa"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "1.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"]
]

region_embroderies["Софийска"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "1.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"]
]

region_embroderies["Капанска"] = [
  ["Ръкав на женска риза", "kapanska_1.jpg"],
  ["Пола", "kapanska_2.jpg"],
  ["Ръкав на мъжка риза", "kapanska_3.jpg"],
  ["Деколте", "2.jpg"],
  ["Престилка", "2.jpg"]
]

region_embroderies["Видинска"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "1.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"]
]

region_embroderies["Разлошка"] = [
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
