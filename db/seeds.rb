# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@muse = Artist.create!(name: 'Muse')
@absolution = @muse.songs.create!(title: 'Absolution', length: 32, play_count: 235)
@apocalypse = @muse.songs.create!(title: 'Apocalypse Please', length: 321, play_count: 11235)