# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name: "Joe", email: "joe@jo.jo", password: "123", role: "owner")
# User.create(name: "Joey", email: "je@jo.jo", password: "123", role: "staff")
# User.create(name: "Bob", email: "jo@jo.jo", password: "123", role: "staff")

User.create(
    email: 'faculty@example.com',
    name: 'Faculty Member',
    password: 'password',
    role: 'owner'
)

User.create(
    email: 'staff@example.com',
    name: 'Faculty Member',
    password: 'password',
    role: 'staff'
)

20.times do
  Experiment.create(
    title: Faker::Lorem.sentence,
    summary: Faker::Lorem.paragraph,
    abstract: Faker::Lorem.paragraph,
    introduction: Faker::Lorem.paragraph,
    hypothesis: Faker::Lorem.paragraph,
    methods: Faker::Lorem.paragraph,
    observations: Faker::Lorem.paragraph,
    results: Faker::Lorem.paragraph,
    conclusion: Faker::Lorem.paragraph)
end

experiments = Experiment.all

faker_emails = []

100.times do
  faker_emails << Faker::Internet.email
end

unique_faker_emails = faker_emails.uniq

20.times do |i|
  user = User.create(
    email: unique_faker_emails[i],
    name: Faker::Name.name,
    password: 'password',
    role: 'staff'
    )
end

20.times do
  user = User.create(
    email: unique_faker_emails[20 + i],
    name: Faker::Name.name,
    password: 'password',
    role: 'staff'
    )
end
