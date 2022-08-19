require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  describe 'GET /index' do
    before do
      let!(:appointment) {FactoryBot.create(:appointment)}
      get "users/1/appointments/#{appointment.id}"
    end
    
    it 'returns the created appointment' do
      expect(json['id']).to_be > 0
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end