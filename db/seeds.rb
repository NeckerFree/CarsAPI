# include FactoryBot::Syntax::Methods

first=User.create(name: 'Amrendra K' ,email: 'amrendra@gmail.com' , password: '123456' , password_confirmation: '123456', age: '40', phone:"9930109581")
second=User.create(name: 'Elio C' ,email: 'elio@gmail.com' , password: '123456' , password_confirmation: '123456', age: '45', phone:"456123789")
third=User.create(name: 'Oscar B' ,email: 'oscar@gmail.com' , password: '123456' , password_confirmation: '123456', age: '35', phone:"789123456")

one = Car.create(model: 'Coupe', color: 'Yellow', description: "The Chevrolet Camaro is a mid-size American automobile manufactured by Chevrolet, classified as a pony car. It first went on sale on September 29, 1966, for the 1967 model year and was designed as a competing model to the Ford Mustang.", price: '31.500', brand: 'Chevrolet', photo: 'chevroletCamaro.png' )
two = Car.create(model: 'Fortuner TRD', color: 'Yellow', description: "It returns a certified mileage of 12.9 kmpl. This TRD Celebratory Edition variant comes with an engine putting out 174 bhp @ 3400 rpm and 450 Nm @ 1600 rpm of max power and max torque respectively.", price: '44.633', brand: 'Toyota', photo: 'toyotatrd.png' )
three = Car.create(model: 'Grand Cherokee SUV', color: 'Black', description: " Its appeal is bolstered by the fact that it pairs impressive off-road capability with on-road refinement, offers lots of available luxury appointments and features, and has the rugged, outdoorsy look Jeep buyers love. We like it too, in fact, and gave it an Editors' Choice award.", price: '59,675', brand: 'Jeep', photo: 'grandCherokeeSUV.png' )
four = Car.create(model: 'Tucson', color: 'Blue', description: "Its cabin is nicely laid out and offers plenty of convenience and luxury features—especially toward the more expensive end of the lineup where the Limited and Ultimate models take up residence. Buyers choose between a 164-hp 2.0-liter or a 181-hp 2.4-liter four-cylinder engine and either front- or all-wheel drive.", price: '34.540', brand: 'Hyunda', photo: 'hyundaiTucson.png' )
five = Car.create(model: 'M5', color: 'Yellow', description: "The BMW M5 is both, with a body based on the regular 5-series and a heart-and-lung transplant courtesy of the brand’s M performance division. Under the hood lives a spectacular 600-hp twin-turbo V-8 bolted to an eight-speed automatic transmission that powers all four wheels.", price: '143,995', brand: 'BMW', photo: 'bmwm5.png')

Car.create(model: 'AMG GT', color: 'Gray', description: "The Mercedes-AMG GT combines the fascination of an authentic sports car with segment-specific technology leadership and superb everyday practicality. With a top speed of 312 km/h and an acceleration from 0 to 100 km/h in 3.8 seconds, the Mercedes-AMG GT is the ideal fit for a sporty lifestyle.", price: '92,500', brand: 'Mercedes-Benz', photo: 'mercedesGt.png')
Car.create(model: 'BMW X7', color: 'Black', description: "The entry-level X7 xDrive40i is powered by a 375-hp turbocharged inline-six-cylinder, and the M50i has a twin-turbo 4.4-liter V-8 that makes 523 horses. The Alpina XB7 has a specially tuned version of that V-8, which develops 630 horsepower. All three engines pair with an eight-speed automatic and all-wheel drive.", price: '74,900', brand: 'BMW', photo: 'bmwx7.png')
Car.create(model: 'Audi RS7', color: 'Red', description: "The Audi RS7 is a largemouth high-performance hatchback sedan with swollen fenders and a spacious interior that’s chock full of the luxuries and high-tech gear you’d expect in a super-sedan. A 591-hp twin-turbocharged V-8 bolted to an eight-speed automatic transmission supplies the thrills with the help of standard all-wheel drive.", price: '120,900', brand: 'Audi', photo: 'bmwx7.png')
Car.create(model: 'TeslaS', color: 'White', description: "Model S is built from the ground up as an electric vehicle, with a high-strength architecture and floor-mounted battery pack for incredible occupant protection and low rollover risk. Every new Model S includes Tesla's latest active safety features, such as Automatic Emergency Braking, at no extra cost.", price: '94,990', brand: 'Tesla', photo: 'testlaS.png')
Car.create(model: 'Lamborghini Aventador', color: 'Blue', description: "Lamborghini Aventador is a 2 seater Coupe available in a price range of Rs. 6.25 - 9.00 Cr*. It is available in 2 variants, a 6498 cc, BS6 and a single Automatic transmission. Other key specifications of the Aventador include a kerb weight of 1550kg, ground clearance of 125mm and boot space of 110 Liters.", price: '393,695', brand: 'Lamborghini', photo: 'lamborghiniA.png')
Car.create(model: '458 Spider', color: 'Red', description: "The Ferrari 458 Spider is the hardtop convertible variant of the 458 Italia and is powered by a 4.5-liter V-8 with 562 hp and 398 lb-ft of torque that's paired to a seven-speed dual-clutch automatic transmission. Since the car is geared toward performance, fuel economy isn't a strong point at 13/17 mpg city/highway.", price: '474,980', brand: 'Ferrari', photo: 'ferrariSpider.png')
Car.create(model: 'Mercedes-AMG GT R', color: 'Green', description: "The GT R is a high-performance variant of the Mercedes-AMG GT and was introduced at the Goodwood Festival of Speed on 24 June 2016. The M178 engine in this variant is tuned to an output of 430 kW (585 PS; 577 hp) at 6,250 rpm and 700 N⋅m (516 lb⋅ft) of torque at 5,500 rpm.", price: '165,600', brand: 'Mercedes-Benz', photo: 'mercedezGtR.png')
Car.create(model: 'Xpander', color: 'Black', description: "The Mitsubishi Xpander offers the best of both worlds. On the inside it's an MPV, with plenty of cabin space. But on the outside, it's an SUV, with high ground clearance, handling stability and bold, fresh styling, that's equally at home whether you're pulling up outside an exclusive hotel or a supermarket.", price: '29,290', brand: 'Mitsubishi', photo: 'mitsubishiXpander.png')
Car.create(model: 'Peugeot 5008', color: 'Black', description: "The Peugeot 5008 is a stylish-looking seven-seat SUV that goes up against alternatives like the Volkswagen Tiguan Allspace and Skoda Kodiaq. It’s a bit like one of those huge American-style fridges, offering a large and flexible internal space, but externally Peugeot has disguised it as one of those slender, style-focused Smeg fridges.", price: '51,990', brand: 'Peugeot', photo: 'peugeot5008.png')
Car.create(model: 'Mercedes-SLS AMG', color: 'Blue', description: "The Mercedes-Benz SLS AMG has 1 Petrol Engine on offer. The Petrol engine is 6208 cc . It is available with Automatic transmission.Depending upon the variant and fuel type the SLS AMG has a mileage of 10.7 kmpl . The SLS AMG is a 4 seater 8 cylinder car and has length of 4638mm, width of 1939mm and a wheelbase of 2680mm.", price: '221,580', brand: 'Mercedes-Benz', photo: 'mercedesSLSAMG.png')
Car.create(model: 'Jaguar XF 25t', color: 'White', description: "The 2022 Jaguar XF is a satisfying luxury sedan that's actually more affordable than many of its upper-crust competitors. Unlike the Jaguar, neither the Audi A6 or BMW 5-series have a price tag that starts with a four, which makes the XF a strong value proposition. Less strong is its turbo four-cylinder, which is the only available engine.", price: '68,970', brand: 'Jaguar', photo: 'jaguarXF25t.png')
Car.create(model: 'Porsche Macan', color: 'White', description: "The Porsche Macan (Type 95B) is a high-performance five-door luxury crossover SUV produced by the German car manufacturer Porsche from 2014.[1] It is built in Leipzig, Germany. The Macan range includes many variants, including the Macan, Macan S, Macan S Diesel, Macan GTS and the Macan Turbo. The Macan shares a platform with the Audi Q5. It is the least expensive vehicle currently sold by Porsche.", price: '63,100', brand: 'Porsche', photo: 'porscheMacan.png')
Car.create(model: 'Rolls-Royce Phantom', color: 'Blue', description: "The Rolls-Royce Phantom is a full-sized luxury saloon manufactured by Rolls-Royce Motor Cars. It is the eighth and current generation of the Rolls-Royce Phantom, debuting in 2017, and the second launched by Rolls-Royce under BMW ownership. It is offered in two wheelbase lengths. This is the current flagship model made by Rolls-Royce Motor Cars", price: '480,000', brand: 'Rolls-Royce', photo: 'rollsRoycePhantom.png')
Car.create(model: 'Lamborghini Huracan', color: 'Orange', description: "The Lamborghini Huracan has 1 Petrol Engine on offer. The Petrol engine is 5204 cc . It is available with Automatic transmission.Depending upon the variant and fuel type the Huracan has a mileage of 10.6 to 11.24 kmpl & Ground clearance of Huracan is 125mm. The Huracan is a 2 seater 10 cylinder car and has length of 4459mm, width of 1924mm and a wheelbase of 2620mm.", price: '350,000', brand: 'Lamborghini', photo: 'lamborghiniHuracan.png')
Car.create(model: 'Ferrari 488', color: 'Blue', description: "The Ferrari 488 (Type F142M) is a mid-engine sports car produced by the Italian automobile manufacturer Ferrari. The car replaced the 458, being the first mid-engine Ferrari to use a turbocharged V8 since the F40. It was succeeded by the Ferrari F8.The car is powered by a 3.9-litre twin-turbocharged V8 engine, smaller in displacement but generating a higher power output than the 458's naturally aspirated engine. ", price: '284,700', brand: 'Ferrari', photo: 'ferrari488.png')


Selection.create(user_id: first.id, car_id: one.id)
Selection.create(user_id: first.id, car_id: two.id)

Selection.create(user_id: second.id, car_id: three.id)
Selection.create(user_id: second.id, car_id: four.id)

Selection.create(user_id: third.id, car_id: one.id)
Selection.create(user_id: third.id, car_id: five.id)

Country.create(name: 'Colombia')
Country.create(name: 'India')

City.create(country_id: '1', name: 'Bogotá')
City.create(country_id: '1', name: 'Leticia')
City.create(country_id: '1', name: 'Riohacha')

City.create(country_id: '2', name: 'Aara')
City.create(country_id: '2', name: 'Patna')
City.create(country_id: '2', name: 'Delhi')

seller1 = Seller.create(name: 'Seller # 1', phone:'9930109581')
seller2 = Seller.create(name: 'Seller # 2', phone:'9930109582')
seller3 = Seller.create(name: 'Seller # 3', phone:'9930109583')
seller4 = Seller.create(name: 'Seller # 4', phone:'9930109584')
seller5 = Seller.create(name: 'Seller # 5', phone:'9930109585')

#  my_user = create(:user)
#  my_car = create(:car)
# (1..5).each do
#     my_seller = create(:seller) 
#     my_city = create(:city)
# end
#  my_appointment= create(:appointment)

