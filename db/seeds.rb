# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Activity.delete_all
Trip.delete_all
User.delete_all
activity1 = Activity.create!(name: "Ir a las Termas")
activity2 = Activity.create!(name: "Ir al centro de sky")
user = User.create!(:email => "test@example.com", :password => "test123", :password_confirmation => "test123")
10.times do |i|
  if i < 5
    t = Trip.create!(name: "Viaje #{i}", price: "#{i * 10}", date: "2018-10-19 22:05:00", user: user)
    t.activities << activity1
    t.save!
  else
    t = Trip.create!(name: "Viaje #{i}", price: "#{i * 10}", date: "2018-10-19 22:05:00", user: user)
    t.activities << activity2
    t.save!
  end
end
