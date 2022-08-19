require 'rails_helper'

RSpec.describe 'Appointment', type: :request do
  describe "DELETE /destroy" do
    let!(:appointment) { FactoryBot.create(:appointment) }

    before do
      delete "/appointments/#{appointment.id}"
    end

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end