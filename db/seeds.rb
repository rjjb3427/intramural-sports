# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.delete_all
League.delete_all
Team.delete_all
TeamGame.delete_all
PlayerTeam.delete_all

300.times do
  Player.create(name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number, email: Faker::Internet.email, coach: false, password: '123')
end

League.create(sport: "Football")
League.create(sport: "Basketball")
League.create(sport: "Hockey")


20.times do
  Team.create(name: Faker::Pokemon.name, league_id: rand(1..3))
end

60.times do
  Game.create(location: Faker::Address.street_address, date: DateTime.now, home_score: rand(1..50), away_score: rand(1..50))
end

60.times do
  TeamGame.create(home_id: rand(1..20), away_id: rand(1..20), game_id: rand(1..60))
end

300.times do
  PlayerTeam.create(team_id: rand(1..20), player_id: rand(1..300))
end

# Game.create(home_score: rand(1..20), away_score: rand(1..20), location: Faker::Address.street_address, date: DateTime.now, home_id: rand(1..10), away_id: rand(1..10))
#
# Game.create(home_score:0, away_score: 0, location: "23423 fadf adfawfe", date: "2016-08-04 18:53:50", home_id: 4, away_id: 5)
