# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


regions = [
  ["Samokov Region", "samokovksa.jpg",
  %{"Изложбата се организира от Пенсионерски клуб "Приятели на библиотеката" към Пенсионерски съюз'2004 и библиотеката. В нея ще бъдат представени български шевици от шест етнографски
области - Варненска, Видинска, Софийска, Тракийска, Плевенска, шевици от Родопска, Ловешка, Котленска област и македонски шевици, обл. Станке Димитров
Четири дами ще изложат своите шевици - Божана Абаджиева, Софка Пачкова, Живка Маркова и Мария Пенчева"}],

  ["Lovech Region","loveshka.jpg",
  %{"Ловешките шевици...Изложбата се организира от Пенсионерски клуб "Приятели на библиотеката" към Пенсионерски съюз'2004 и библиотеката. В нея ще бъдат представени български шевици от шест етнографски
области - Варненска, Видинска, Софийска, Тракийска, Плевенска, шевици от Родопска, Ловешка, Котленска област и македонски шевици, обл. Станке Димитров
Четири дами ще изложат своите шевици - Божана Абаджиева, Софка Пачкова, Живка Маркова и Мария Пенчева"}],

  ["Sofia Region","sofiiska.jpg",
  %{"Самоковските шевици...Изложбата се организира от Пенсионерски клуб "Приятели на библиотеката" към Пенсионерски съюз'2004 и библиотеката. В нея ще бъдат представени български шевици от шест етнографски
области - Варненска, Видинска, Софийска, Тракийска, Плевенска, шевици от Родопска, Ловешка, Котленска област и македонски шевици, обл. Станке Димитров
Четири дами ще изложат своите шевици - Божана Абаджиева, Софка Пачкова, Живка Маркова и Мария Пенчева"}],

  ["Kapanski Region","kapanska.jpg",
  %{"Капанските шевици...Изложбата се организира от Пенсионерски клуб "Приятели на библиотеката" към Пенсионерски съюз'2004 и библиотеката. В нея ще бъдат представени български шевици от шест етнографски
области - Варненска, Видинска, Софийска, Тракийска, Плевенска, шевици от Родопска, Ловешка, Котленска област и македонски шевици, обл. Станке Димитров
Четири дами ще изложат своите шевици - Божана Абаджиева, Софка Пачкова, Живка Маркова и Мария Пенчева"}],

  ["Vidin Region","vidinska.jpg",
  %{"Видинските шевици...Изложбата се организира от Пенсионерски клуб "Приятели на библиотеката" към Пенсионерски съюз'2004 и библиотеката. В нея ще бъдат представени български шевици от шест етнографски
области - Варненска, Видинска, Софийска, Тракийска, Плевенска, шевици от Родопска, Ловешка, Котленска област и македонски шевици, обл. Станке Димитров
Четири дами ще изложат своите шевици - Божана Абаджиева, Софка Пачкова, Живка Маркова и Мария Пенчева"}],

  ["Razlog Region","razlojka.jpg",
  %{"Видинските шевици...Изложбата се организира от Пенсионерски клуб "Приятели на библиотеката" към Пенсионерски съюз'2004 и библиотеката. В нея ще бъдат представени български шевици от шест етнографски
области - Варненска, Видинска, Софийска, Тракийска, Плевенска, шевици от Родопска, Ловешка, Котленска област и македонски шевици, обл. Станке Димитров
Четири дами ще изложат своите шевици - Божана Абаджиева, Софка Пачкова, Живка Маркова и Мария Пенчева"}]

]

regions.each do |name, image, description|
  Region.create( name: name, image: File.open(File.join(Rails.root.join("test/fixtures/images/#{image}"))), description: description )
end


region_embroderies = {}

region_embroderies["Samokov Region"] = [
  ["Ръкав на ж. риза", "1.jpg"],
  ["Пола", "2.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"],
  ["Ръкав на м.риза", "1.jpg"],
  ["Престилка", "2.jpg"],
  ["Престилка", "1.jpg"]
]

region_embroderies["Lovech Region"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "1.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"],
  ["Ръкав на м.риза", "1.jpg"],
  ["Престилка", "2.jpg"],
  ["Престилка", "1.jpg"]
]

region_embroderies["Sofia Region"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "1.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"],
  ["Престилка", "1.jpg"],
  ["Ръкав на м.риза", "2.jpg"],
  ["Престилка", "1.jpg"]
]

region_embroderies["Kapanski Region"] = [
  ["Ръкав на женска риза", "kapanska_1.jpg"],
  ["Пола", "kapanska_2.jpg"],
  ["Ръкав на мъжка риза", "kapanska_3.jpg"],
  ["Деколте", "2.jpg"],
  ["Престилка", "2.jpg"],
  ["Престилка", "1.jpg"],
  ["Ръкав на м.риза", "2.jpg"],
  ["Престилка", "1.jpg"]
]

region_embroderies["Vidin Region"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "1.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"],
  ["Престилка", "1.jpg"],
  ["Ръкав на м.риза", "2.jpg"],
  ["Престилка", "1.jpg"]
]

region_embroderies["Razlog Region"] = [
  ["Ръкав на женска риза", "1.jpg"],
  ["Пола", "1.jpg"],
  ["Ръкав на мъжка риза", "1.jpg"],
  ["Деколте", "1.jpg"],
  ["Престилка", "2.jpg"],
  ["Престилка", "1.jpg"],
  ["Престилка", "2.jpg"],
  ["Ръкав на м.риза", "1.jpg"]
]


region_embroderies.each do | region_name, embroderies |
  region = Region.find_by(name: region_name)

  embroderies.each do | name, image |
    Embrodery.create(name: name, region_id: region.id, image: File.open(File.join(Rails.root.join("test/fixtures/images/#{image}"))))
  end
end
