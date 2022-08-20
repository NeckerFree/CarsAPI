# https://github.com/faker-ruby/faker
FactoryBot.define do
    factory :user do
        age {Faker::Number.within(range: 18..100)}
        phone {Faker::PhoneNumber.phone_number}
        name {Faker::Name.name }
        email { Faker::Internet.unique.email } 
        password { "123456" }
        password_confirmation { "123456" }
    end
    factory :seller do 
        
    end    
    factory :country do 
        name {Faker::Address.country}
    end    
    factory :city do 
        country {create(:country)}
        name {Faker::Address.city}
    end
    factory :car do 
        model {Faker::Vehicle.model}
        color {Faker::Vehicle.color}
        description {Faker::Vehicle.standard_specs}
        price {Faker::Number.decimal(l_digits: 2)}
        brand {Faker::Vehicle.manufacture}
        photo {Faker::LoremPixel.image(size: "50x60", is_gray: false, category: 'sports', number: 3) }
    end    
    factory :appointment do
        duration { Faker::Number.within(range: 1..9) }
        branch { Faker::Address.community }
        date_for { Faker::Date.forward(days: 30) }
        user {create(:user)}
        car {create(:car)}
        seller {create(:seller)}
        city {create(:city)}
    end
 end

 