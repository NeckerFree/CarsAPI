require 'rails_helper'

RSpec.describe 'Appointment', type: :request do
  describe 'DELETE /destroy' do
    let!(:my_Appointment) { FactoryBot.create(:appointment) }
    let(:my_user) { FactoryBot.create(:user) }
    before do
      delete "/users/#{my_Appointment.user_id}/appointments/#{my_Appointment.id}", headers: auth_headers(my_user)
    end

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
