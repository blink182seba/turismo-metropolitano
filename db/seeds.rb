# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Trip.destroy_all
Activity.destroy_all
AdminUser.destroy_all
User.destroy_all
activities = Activity.create!([{name: "Hotel 3 Estrellas"},{name: "Desayunar"},{name: "Almorzar"},{name: "Salida Bailable"}])
activity1 = Activity.create!([{name: "Excursion por los andes"},{name: "Visitar laguna los patos"},{name: "Trekking"}])
activity2 = Activity.create!([{name: "Colorado Sky center"},{name: "Parque puente Ñilhue"},{name: "Plaza de los Pumas"}])
activity3 = Activity.create!([{name: "Laguna del Inca"},{name: "Sky Portillo"},{name: "Ruta CH-60"}])
activity4 = Activity.create!([{name: "Aguas Termales"},{name: "Masaje Corporal"},{name: "#{activity1[0].name}"}])
user = User.create!(:email => "test@example.com", :password => "test123", :password_confirmation => "test123", :name => 'test', :last_name => 'example', :phone => '12345678')
trips = ["Embalse del yeso","Farellones","Portillo","Termas"]
4.times do |i|
  t = Trip.create!(name: "#{trips[i]}", price: Faker::Commerce.price.to_i, date: "2018-10-19 22:05:00", user: user, photo: "seed/#{i+1}")
  t.activities << activities
  if i < 1
    t.activities << activity1
    t.save!
  elsif i < 2
    t.activities << activity2
    t.save!
  elsif i < 3
    t.activities << activity3
    t.save!
  else
    t.activities << activity4
    t.save!
  end
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
