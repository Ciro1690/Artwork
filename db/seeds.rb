# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "Van Gogh")
User.create(username: "Michaelangelo")
User.create(username: "Picasso")
User.create(username: "Gaudi")
Artwork.create(title: "Mona Lisa", image_url: "www.mona.com", artist_id: user1.id)
Artwork.create(title: "Sistine Chapel", image_url: "www.sc.com", artist_id: user2.id)
# ArtworkShare.create(artwork_id: artwork1.id, viewer_id: viewer1.id)
