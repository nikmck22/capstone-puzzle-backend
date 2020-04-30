# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'puzzles_info.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Puzzle.new
  t.name = row['name']
  t.description = row['description']
  t.pieces = row['pieces']
  t.format = row['format']
  t.img_url = row['img_url']
  t.rating_id = row['rating_id']
  t.category = row['category']
  t.save
  puts "#{t.name}, #{t.description} saved"
end

puts "There are now #{Puzzle.count} rows in the puzzles table"

