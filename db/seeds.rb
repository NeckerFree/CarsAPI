
# user=User.create!(name: 'Elio' ,email: 'example@mail.com' , password: '123456' , password_confirmation: '123456', age: '40', phone:"9930109581")
# user.save
# user=User.find(1)
# seller=Seller.create!()
# country=Country.create!()
# city=City.create!(country_id: country.id)
# car=Car.create!()
# appointment=Appointment.create!(date_for: '2022-12-20 10:00:00',duration: 1, branch: 'Central office', car_id: car.id, seller_id: seller.id, city_id: city.id, user_id: user.id)
# 
# country=Country.create(name:Faker::Address.country)
# (1..10).each do
#   City.create(name:Faker::Address.city, country_id: country.id)
# end 

include FactoryBot::Syntax::Methods
# my_user = create(:user)
# my_car = create(:car)
# my_seller = create(:seller)
# my_city = create(:city)
my_appointment= create(:appointment)
