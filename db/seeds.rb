# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


regions = [
  ["Samokov Region", "samokovsko_1.jpg",
  %{"Lorem ipsum dolor sit amet, populo quodsi adipisci est ea, eam fabellas torquatos elaboraret no. Has ut nonumes iudicabit. Autem exerci est no, timeam admodum facilisi sea at. Qui eu ipsum volutpat, case phaedrum ex duo. Deseruisse honestatis suscipiantur duo ei, ne nonumy iisque eruditi sea. Dicit vivendo denique ea est. His eu doming doctus, has nihil liberavisse et, sea an semper deserunt ullamcorper.

Ne eos nominavi appetere quaerendum, convenire molestiae sadipscing ut mea. Exerci gloriatur dissentias per ne, nam illum utamur in. Pri ut quem habemus adipiscing, alia repudiandae id vim. At harum paulo nam, per te tollit iudicabit."}],

  ["Lovech Region","loveshko_1.jpg",
  %{"ЛLorem ipsum dolor sit amet, populo quodsi adipisci est ea, eam fabellas torquatos elaboraret no. Has ut nonumes iudicabit. Autem exerci est no, timeam admodum facilisi sea at. Qui eu ipsum volutpat, case phaedrum ex duo. Deseruisse honestatis suscipiantur duo ei, ne nonumy iisque eruditi sea. Dicit vivendo denique ea est. His eu doming doctus, has nihil liberavisse et, sea an semper deserunt ullamcorper.

Ne eos nominavi appetere quaerendum, convenire molestiae sadipscing ut mea. Exerci gloriatur dissentias per ne, nam illum utamur in. Pri ut quem habemus adipiscing, alia repudiandae id vim. At harum paulo nam, per te tollit iudicabit."}],

  ["Sofia Region","sofiisko_1.jpg",
  %{"Lorem ipsum dolor sit amet, populo quodsi adipisci est ea, eam fabellas torquatos elaboraret no. Has ut nonumes iudicabit. Autem exerci est no, timeam admodum facilisi sea at. Qui eu ipsum volutpat, case phaedrum ex duo. Deseruisse honestatis suscipiantur duo ei, ne nonumy iisque eruditi sea. Dicit vivendo denique ea est. His eu doming doctus, has nihil liberavisse et, sea an semper deserunt ullamcorper.

Ne eos nominavi appetere quaerendum, convenire molestiae sadipscing ut mea. Exerci gloriatur dissentias per ne, nam illum utamur in. Pri ut quem habemus adipiscing, alia repudiandae id vim. At harum paulo nam, per te tollit iudicabit."}],

  ["Kapanski Region","kapanski_1.jpg",
  %{"Lorem ipsum dolor sit amet, populo quodsi adipisci est ea, eam fabellas torquatos elaboraret no. Has ut nonumes iudicabit. Autem exerci est no, timeam admodum facilisi sea at. Qui eu ipsum volutpat, case phaedrum ex duo. Deseruisse honestatis suscipiantur duo ei, ne nonumy iisque eruditi sea. Dicit vivendo denique ea est. His eu doming doctus, has nihil liberavisse et, sea an semper deserunt ullamcorper.

Ne eos nominavi appetere quaerendum, convenire molestiae sadipscing ut mea. Exerci gloriatur dissentias per ne, nam illum utamur in. Pri ut quem habemus adipiscing, alia repudiandae id vim. At harum paulo nam, per te tollit iudicabit."}],

  ["Vidin Region","vidinski_1.jpg",
  %{"Lorem ipsum dolor sit amet, populo quodsi adipisci est ea, eam fabellas torquatos elaboraret no. Has ut nonumes iudicabit. Autem exerci est no, timeam admodum facilisi sea at. Qui eu ipsum volutpat, case phaedrum ex duo. Deseruisse honestatis suscipiantur duo ei, ne nonumy iisque eruditi sea. Dicit vivendo denique ea est. His eu doming doctus, has nihil liberavisse et, sea an semper deserunt ullamcorper.

Ne eos nominavi appetere quaerendum, convenire molestiae sadipscing ut mea. Exerci gloriatur dissentias per ne, nam illum utamur in. Pri ut quem habemus adipiscing, alia repudiandae id vim. At harum paulo nam, per te tollit iudicabit."}],

  ["Razlog Region","razloshko_1.jpg",
  %{"Lorem ipsum dolor sit amet, populo quodsi adipisci est ea, eam fabellas torquatos elaboraret no. Has ut nonumes iudicabit. Autem exerci est no, timeam admodum facilisi sea at. Qui eu ipsum volutpat, case phaedrum ex duo. Deseruisse honestatis suscipiantur duo ei, ne nonumy iisque eruditi sea. Dicit vivendo denique ea est. His eu doming doctus, has nihil liberavisse et, sea an semper deserunt ullamcorper.

Ne eos nominavi appetere quaerendum, convenire molestiae sadipscing ut mea. Exerci gloriatur dissentias per ne, nam illum utamur in. Pri ut quem habemus adipiscing, alia repudiandae id vim. At harum paulo nam, per te tollit iudicabit."}]

]

regions.each do |name, image, description|
  Region.create( name: name, image: File.open(File.join(Rails.root.join("test/fixtures/images/#{image}"))), description: description )
end


region_embroderies = {}

region_embroderies["Samokov Region"] = [
  ["Sleeve female shirt", "2.jpg"],
  ["Skirt", "3.jpg"],
  ["Sleeve male shirt", "3.jpg"],
  ["Neckline", "1.jpg"],
  ["Аpron", "2.jpg"],
  ["Sleeve male shirt", "3.jpg"],
  ["Аpron", "2.jpg"],
  ["Аpron", "3.jpg"]
]

region_embroderies["Lovech Region"] = [
  ["Sleeve female shirt", "3.jpg"],
  ["Skirt", "1.jpg"],
  ["Sleeve male shirt", "2.jpg"],
  ["Neckline", "1.jpg"],
  ["Аpron", "3.jpg"],
  ["Sleeve male shirt", "2.jpg"],
  ["Аpron", "2.jpg"],
  ["Аpron", "1.jpg"]
]

region_embroderies["Sofia Region"] = [
  ["Sleeve female shirt", "1.jpg"],
  ["Skirt", "2.jpg"],
  ["Sleeve male shirt", "1.jpg"],
  ["Neckline", "1.jpg"],
  ["Аpron", "2.jpg"],
  ["Sleeve male shirt", "1.jpg"],
  ["Аpron", "2.jpg"],
  ["Аpron", "1.jpg"]
]

region_embroderies["Kapanski Region"] = [
  ["Sleeve female shirt", "2.jpg"],
  ["Skirt", "3.jpg"],
  ["Sleeve male shirt", "3.jpg"],
  ["Neckline", "1.jpg"],
  ["Аpron", "2.jpg"],
  ["Sleeve male shirt", "3.jpg"],
  ["Аpron", "2.jpg"],
  ["Аpron", "3.jpg"]
]

region_embroderies["Vidin Region"] = [
  ["Sleeve female shirt", "1.jpg"],
  ["Skirt", "2.jpg"],
  ["Sleeve male shirt", "1.jpg"],
  ["Neckline", "1.jpg"],
  ["Аpron", "2.jpg"],
  ["Sleeve male shirt", "1.jpg"],
  ["Аpron", "2.jpg"],
  ["Аpron", "1.jpg"]
]

region_embroderies["Razlog Region"] = [
  ["Sleeve female shirt", "1.jpg"],
  ["Skirt", "2.jpg"],
  ["Sleeve male shirt", "3.jpg"],
  ["Neckline", "1.jpg"],
  ["Аpron", "3.jpg"],
  ["Sleeve male shirt", "2.jpg"],
  ["Neckline", "3.jpg"],
  ["Sleeve male shirt", "1.jpg"]
]


region_embroderies.each do | region_name, embroderies |
  region = Region.find_by(name: region_name)

  embroderies.each do | name, image |
    Embrodery.create(name: name, region_id: region.id, image: File.open(File.join(Rails.root.join("test/fixtures/images/#{image}"))))
  end
end
