require 'faker'

puts "🌱 Seeding data..."

# Seed your database here
15.times do
    password = Faker::Alphanumeric.alphanumeric(number: 10)
    firstname = Faker::Name.unique.name
    surname = Faker::Name.last_name
    email = Faker::Internet.unique.email
    registered = Faker::Boolean.boolean
    task_id = Faker::IDNumber.south_african_id_number
    User.create(password: password, firstname: firstname, surname: surname, email: email, registered: registered, task_id: task_id )
end


puts "✅ Done seeding!"
