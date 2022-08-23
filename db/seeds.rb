first=User.create(name: 'Amrendra K' ,email: 'amrendra@mail.com' , password: '123456' , password_confirmation: '123456', age: '40', phone:"9930109581")
second=User.create(name: 'Elio C' ,email: 'elio@mail.com' , password: '123456' , password_confirmation: '123456', age: '45', phone:"456123789")
third=User.create(name: 'Oscar B' ,email: 'oscar@mail.com' , password: '123456' , password_confirmation: '123456', age: '35', phone:"789123456")

one = Car.create(model: 'Coupe', color: 'Yellow', description: "The Chevrolet Camaro is a mid-size American automobile manufactured by Chevrolet, classified as a pony car. It first went on sale on September 29, 1966, for the 1967 model year and was designed as a competing model to the Ford Mustang.", price: '31.500', brand: 'Chevrolet', photo: 'chevroletCamaro.png' )
two = Car.create(model: 'Fortuner TRD', color: 'Yellow', description: "It returns a certified mileage of 12.9 kmpl. This TRD Celebratory Edition variant comes with an engine putting out 174 bhp @ 3400 rpm and 450 Nm @ 1600 rpm of max power and max torque respectively.", price: '44.633', brand: 'Toyota', photo: 'toyotatrd.png' )
three = Car.create(model: 'Grand Cherokee SUV', color: 'Black', description: " Its appeal is bolstered by the fact that it pairs impressive off-road capability with on-road refinement, offers lots of available luxury appointments and features, and has the rugged, outdoorsy look Jeep buyers love. We like it too, in fact, and gave it an Editors' Choice award.", price: '59,675', brand: 'Jeep', photo: 'grandCherokeeSUV.png' )
four = Car.create(model: 'Tucson', color: 'Blue', description: "Its cabin is nicely laid out and offers plenty of convenience and luxury features—especially toward the more expensive end of the lineup where the Limited and Ultimate models take up residence. Buyers choose between a 164-hp 2.0-liter or a 181-hp 2.4-liter four-cylinder engine and either front- or all-wheel drive.", price: '34.540', brand: 'Hyunda', photo: 'hyundaiTucson.png' )
five = Car.create(model: 'M5', color: 'Yellow', description: "The BMW M5 is both, with a body based on the regular 5-series and a heart-and-lung transplant courtesy of the brand’s M performance division. Under the hood lives a spectacular 600-hp twin-turbo V-8 bolted to an eight-speed automatic transmission that powers all four wheels.", price: '143,995', brand: 'BMW', photo: 'bmwm5.png')

Selection.create(user_id: first.id, car_id: one.id)
Selection.create(user_id: first.id, car_id: two.id)

Selection.create(user_id: second.id, car_id: three.id)
Selection.create(user_id: second.id, car_id: four.id)

Selection.create(user_id: third.id, car_id: one.id)
Selection.create(user_id: third.id, car_id: five.id)
