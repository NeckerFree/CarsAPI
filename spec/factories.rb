# https://github.com/faker-ruby/faker
FactoryBot.define do
    factory :user do
        # name: Faker::Name.name 
        email { Faker::Internet.unique.email } 
        password { "123456" }
        password_confirmation { "123456" }
    end
    factory :seller do 
        
    end    
    factory :country do 
        # name =Faker::Address.country
    end    
    factory :city do 
        # country city {create(:country)}
        # name = Faker::Address.city
    end
    factory :car do 
        
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

 