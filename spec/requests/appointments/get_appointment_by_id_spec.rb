require 'rails_helper'

RSpec.describe "Appointments", type: :request do
  context 'Get appointment by id' do
    let(:my_Appointment) {FactoryBot.create(:appointment)}
    let(:my_user) {FactoryBot.create(:user)}
    before do
      get "/users/#{my_Appointment.user_id}/appointments/#{my_Appointment.id}", headers: auth_headers(my_user)
    end
    
    it 'returns the created appointment' do
      expect(json['branch'].length).to be > 0
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end
