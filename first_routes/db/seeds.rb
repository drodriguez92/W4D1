# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artwork.destroy_all
User.destroy_all

user1 = User.create!(username: 'the_dog')
user2 = User.create!(username: 'the_john')
user3 = User.create!(username: 'the_todd')

art1 = Artwork.create!(title: 'nice art', image_url: 'www.art.com/1', artist_id: user1.id)
art2 = Artwork.create!(title: 'bomb art', image_url: 'www.art.com/2', artist_id: user1.id)
art3 = Artwork.create!(title: 'beast art', image_url: 'www.art.com/3', artist_id: user2.id)
art4 = Artwork.create!(title: 'red circles', image_url: 'www.art.com/a', artist_id: user2.id)
art5 = Artwork.create!(title: 'bona lisa', image_url: 'www.art.com/b', artist_id: user3.id)
art6 = Artwork.create!(title: 'better than beast art', image_url: 'www.art.com/c', artist_id: user3.id)

ArtworkShare.create!(artwork_id: art1.id, viewer_id: user2.id)
ArtworkShare.create!(artwork_id: art2.id, viewer_id: user2.id)
ArtworkShare.create!(artwork_id: art2.id, viewer_id: user3.id)
ArtworkShare.create!(artwork_id: art3.id, viewer_id: user1.id)
ArtworkShare.create!(artwork_id: art4.id, viewer_id: user1.id)
ArtworkShare.create!(artwork_id: art5.id, viewer_id: user2.id)
ArtworkShare.create!(artwork_id: art6.id, viewer_id: user1.id)
ArtworkShare.create!(artwork_id: art6.id, viewer_id: user2.id)
