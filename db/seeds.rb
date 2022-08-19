# user=User.create!(email: 'example@mail.com' , password: '123456' , password_confirmation: '123456')
# user.save
user=User.find(1)
seller=Seller.create!()
country=Country.create!()
city=City.create!(country_id: country.id)
car=Car.create!()
appointment=Appointment.create!(date_for: '2022-12-20 10:00:00',duration: 1, branch: 'Central office', car_id: car.id, seller_id: seller.id, city_id: city.id, user_id: user.id)
