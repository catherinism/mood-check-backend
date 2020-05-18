# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mood.create(
    feeling: "happy",
    date: "05/01/20",
    weather: "cold",
    note: "Today is mother's day",
    url: 'https://i.imgur.com/zw4Cy0d.png')

# Mood.create(feeling: "excited", url: 'https://i.imgur.com/rJVAlqR.png')
# Mood.create(feeling: "relaxed", url: 'https://i.imgur.com/8r9Ee59.png')
# Mood.create(feeling: "sad", url: 'https://i.imgur.com/nWbYIMR.png')
# Mood.create(feeling: "worried", url: 'https://i.imgur.com/D35Cdqy.png')
# Mood.create(feeling: "angry", url: 'https://i.imgur.com/D5kNKAH.png')

Happening.create(name: "Cleaning" , mood_id: 1)

