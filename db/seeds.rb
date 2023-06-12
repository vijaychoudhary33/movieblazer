# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

## helpers
require 'faker'
require 'date'

def random_option
    options = ['Action', 'Crime Flim', 'Love', 'Time pass']
    @selected_option = options.sample
  end
def random_lang
    langs = ['English','Hindi','Franch','Tamil','Sanskrit']
    @selected_lang = langs.sample
end  
  

puts "++++++++++++STARTING SEEDING++++++++++++++++++++++++++++"
100.times do
    mov_name = Faker::Movie.title
    quote = Faker::Movie.quote

    rate = rand(5..10)
    dir = Faker::Name.unique.name
    random_date = Faker::Date.between(from: 1.year.ago, to: Date.today)
    random_hours = rand(3..5)

    Movie.create(name:mov_name,description:quote,rating:rate,genre:random_option,language:random_lang,director:dir,release_date:random_date,run_time:random_hours)

end
puts "++++++++++++SUCCESSFULLY SEEDING DONE ++++++++++++++++++++++++++++"







