require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  context 'Get appointments by user' do
    let(:my_user) { FactoryBot.create(:user) }
    let(:my_car) { FactoryBot.create(:car) }
    let(:my_seller) { FactoryBot.create(:seller) }
    let(:my_city) { FactoryBot.create(:city) }
    let(:my_branch) { Faker::Address.community }
    let(:my_date_for) { Faker::Date.forward(days: 30) }
    let(:my_duration) { Faker::Number.within(range: 1..9) }
    before do
      post "/users/#{my_user.id}/appointments",
           params: {
             appointment: { user_id: my_user.id,
                            car_id: my_car.id,
                            seller_id: my_seller.id,
                            city_id: my_city.id,
                            duration: my_duration,
                            branch: my_branch.to_s,
                            date_for: my_date_for.to_s }
           },
           headers: auth_headers(my_user)

      get "/users/#{my_user.id}/appointments", headers: auth_headers(my_user)
    end

    it 'returns all appointments' do
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end
