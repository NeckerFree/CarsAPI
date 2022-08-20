require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  context 'Create new Appointment' do
    let(:my_user) {FactoryBot.create(:user)}
    let(:my_car) {FactoryBot.create(:car)}
    let(:my_seller) {FactoryBot.create(:seller)}
    let(:my_city) {FactoryBot.create(:city)}
    let(:my_branch) { Faker::Address.community }
    let(:my_date_for) { Faker::Date.forward(days: 30) }
    let(:my_duration) { Faker::Number.within(range: 1..9) }
    before do
      post "/users/#{my_user.id}/appointments" ,  
      # params: { duration: my_duration, branch: my_branch, date_for: my_date_for, user_id:  my_user.id, car_id: my_car.id,  seller_id: my_seller.id, city_id: my_city.id },
      # :params => '{ "widget": { "name":"My Widget" } }'
      :params => { 
                  :appointment =>
                      { 'user_id': my_user.id, 
                        'car_id': my_car.id, 
                        'seller_id': my_seller.id, 
                        'city_id': my_city.id, 
                        'duration': my_duration, 
                        'branch': "#{my_branch}",   
                        'date_for': "#{my_date_for}"
                      }
                 },
      :headers => auth_headers(my_user)
    end
  
    it 'returns the branch' do
            expect(json['branch']).to eq(my_branch)
    end

    it 'returns the date_for' do
            expect(json['date_for']).to eq(my_date_for.strftime("%Y-%m-%dT%T.%LZ"))
    end

    it 'returns a created status' do
            expect(response).to have_http_status(:created)
    end
  end
end