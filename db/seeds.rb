# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Joe", email: "joe@jo.jo", password: "123", role: "owner")
User.create(name: "Joey", email: "je@jo.jo", password: "123", role: "staff")
User.create(name: "Bob", email: "jo@jo.jo", password: "123", role: "staff")

Experiment.create(
                  title: "Join us!",
                  summary: "yeah!",
                  owner_id: 1
  )
