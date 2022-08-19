require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  describe 'GET /index' do
    before do
      FactoryBot.create_list(:appointment, 10)
      get 'users/1/appointments'
    end
    
    it 'returns all appointments' do
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end