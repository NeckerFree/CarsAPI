user=User.create!(email: 'example@mail.com' , password: '123456' , password_confirmation: '123456')
user.save
user=User.find(1)
seller=Seller.create!()
country=Country.create!()
city=City.create!(country_id: country.id)
car=Car.create!()
appointment=Appointment.create!(date_for: '2022-12-20 10:00:00',duration: 1, branch: 'Central office', car_id: car.id, seller_id: seller.id, city_id: city.id, user_id: user.id)

Car.create(model: "125 S", color: "red", description: "It was the first car to bear the Ferrari emblem. The V12 engine was designed by Gioacchino Colombo, with some input from Giuseppe Busso and Luigi Bazzi. It was made in Sport and competition versions, with different body types but with practically identical chassis and mechanics. The debut of the 125 S at the Piacenza circuit was, in the words of Enzo Ferrari himself, “a promising failure.” Franco Cortese was forced to retire due to problems with the fuel pump when he was leading the race. In the following four months the 125 S returned to the circuits 13 times and won six of these races.", price: 500.000, brand: "Ferrari", photo: "https://cdn.motor1.com/images/mgl/6ZpBj7/s3/ferrari-125-s-1947.jpg" )