# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mood.create(feeling: "happy", url: 'https://i.imgur.com/zw4Cy0d.png')
Mood.create(feeling: "excited", url: 'https://i.imgur.com/rJVAlqR.png')
Mood.create(feeling: "relaxed", url: 'https://i.imgur.com/8r9Ee59.png')
Mood.create(feeling: "sad", url: 'https://i.imgur.com/nWbYIMR.png')
Mood.create(feeling: "worried", url: 'https://i.imgur.com/D35Cdqy.png')
Mood.create(feeling: "angry", url: 'https://i.imgur.com/D5kNKAH.png')

Quote.create(phrase: '"Happiness is when what you think, what you say, and what you do are in harmony." - Mahatma Gandhi', mood_id: 1)
Quote.create(phrase: '"Turn your fears into excitement. Your anxieties into enthusiasm. Your passion into energy." - Sanober Khan', mood_id: 2)
Quote.create(phrase: '"Take rest; a field that has rested gives a bountiful crop." - Ovid', mood_id: 3)
Quote.create(phrase: '"Sadness is but a wall between two gardens." - Khalil Gibran', mood_id: 4)
Quote.create(phrase: '"Instead of worrying about what you cannot control, shift your energy to what you can create." - Roy T. Bennett', mood_id: 5)
Quote.create(phrase: '"When anger rises, think of the consequences." - Confucius', mood_id: 6)

