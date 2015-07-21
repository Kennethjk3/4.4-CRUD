# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Maestro should have aritist album genre (optional), favorite (optional)

Maestro.create(
  artist: "August Burns Red",
  album: "Constelations",
  genre: "Hard-core",
  favorite: true
)
Maestro.create(
  artist: "Kings of Leon",
  album: "Come Around Sundown",
  genre: "Rock"
)
Maestro.create(
  artist: "Brunori Sas",
  album: "Vol.2 - Poveri Cristi",
  genre: "Italian-Rock",
  favorite: true
)
