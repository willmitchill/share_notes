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

Course.create!(
  name:"Econ 103",
  course_number: 103,
  department: "Economics",
  university_id: 1,
  user_id: 1,
)

Course.create!(
  name:"Econ 205",
  course_number: 205,
  department: "Economics",
  university_id: 1,
  user_id: 1,
)

Course.create!(
  name:"Bio 153",
  course_number: 153,
  department: "Biology",
  university_id: 1,
  user_id: 1,
)

Course.create!(
  name:"Calc 101",
  course_number: 101,
  department: "Math",
  university_id: 1,
  user_id: 1,
)

Course.create!(
  name:"Chem 400",
  course_number: 400,
  department: "Chemistry",
  university_id: 2,
  user_id: 2,
)

Course.create!(
  name:"Econ 143",
  course_number: 143,
  department: "Economics",
  university_id: 2,
  user_id: 1,
)

Course.create!(
  name:"Psych 100",
  course_number: 100,
  department: "Psychology",
  university_id: 1,
  user_id: 1,
)


Course.create!(
  name:"Soc 103",
  course_number: 103,
  department: "Sociology",
  university_id: 2,
  user_id: 1,
)

Course.create!(
  name:"Econ 103",
  course_number: 103,
  department: "Economics",
  university_id: 1,
  user_id: 1,
)

Course.create!(
  name:"Hist 500",
  course_number: 500,
  department: "History",
  university_id: 2,
  user_id: 1,
)

Course.create!(
  name:"Econ 432",
  course_number: 432,
  department: "Economics",
  university_id: 2,
  user_id: 1,
)

Course.create!(
  name:"Calc 103",
  course_number: 103,
  department: "Math",
  university_id: 1,
  user_id: 1,
)

User.create!(
  firstname:"Shaq",
  lastname:"O'Neal",
  password_digest: "123",
  university: "University of Victoria",
  email: "shaq@gmail.com",
  admin: true,
)
