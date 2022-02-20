# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
i = 0
puts "begining seed models"

10.times do
  puts i
  # years = %w[60 70 80 90 2000 2010 2020].sample
  # year = Year.new(name: years)
  # year.save
  # categorys = %w[jazz blues rock classic electro].sample
  # category = Category.new(name: categorys)
  # category.save

  # music = Music.new(title: "ghibli studio", artist: "hisaishi", year_id: Year.first, category_id: Category.first)
  # music.save

  # puts music.title
  # i += 1
end

puts "save !!"
