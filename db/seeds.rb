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
User.destroy_all
Experiment.destroy_all


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

20.times do |i|
  user = User.create(
    email: unique_faker_emails[20 + i],
    name: Faker::Name.name,
    password: 'password',
    role: 'staff'
    )
end

User.create(
    email: 'faculty@example.com',
    name: 'Faculty Member',
    password: 'password',
    role: 'owner'
)

User.create(
    email: 'staff@example.com',
    name: 'Established Autogenics Staffmember',
    password: 'password',
    role: 'staff'
)

owners = User.where(role: "owner")
staff = User.where(role: "staff")

20.times do
  experiment = Experiment.create(
    title: Faker::Lorem.sentence,
    summary: Faker::Lorem.paragraph,
    abstract: Faker::Lorem.paragraph,
    introduction: Faker::Lorem.paragraph,
    hypothesis: Faker::Lorem.paragraph,
    methods: Faker::Lorem.paragraph,
    observations: Faker::Lorem.paragraph,
    results: Faker::Lorem.paragraph,
    conclusion: Faker::Lorem.paragraph,
    staff_needed: rand(1..3),
    contact_info: Faker::PhoneNumber.phone_number)
  experiment.users << owners.sample
  experiment.users << staff.sample
end
