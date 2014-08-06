# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
University.create!(
  name: "University of Victoria",
  city: "Victoria",
)
University.create!(
  name: "University of Toronto",
  city: "Toronto",
)
University.create!(
  name: "Dalhousie",
  city: "Halifax",
)
University.create!(
  name: "UBC",
  city: "Vancouver",
)
University.create!(
  name: "University of Alberta",
  city: "Edmonton",
)
University.create!(
  name: "University of Calgary",
  city: "Calgary",
)
University.create!(
  name: "UWO",
  city: "London",
)

University.create!(
  name: "SFU",
  city: "Vancouver"
)
