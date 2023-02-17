# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Employe.create(name: "My Home", position: "Villa", age: 51)
Employe.create(name: "My Home2", position: "Villa2", age: 25)
Employe.create(name: "My Home3", position: "Villa3", age: 35)

# create multiple Home records using an array of attributes
homes = [
  { name: "Second Home", position: "Condo", age: 10 },
  { name: "Vacation Home", position: "Mansion", age: 2 }
]

# # use the `create` method in a loop to create multiple records
# homes.each { |attributes| Home.create(attributes) }