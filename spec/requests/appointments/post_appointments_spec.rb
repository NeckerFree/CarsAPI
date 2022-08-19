require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  describe 'POST/create' do
    context 'with valid parameters' do
        let!(:my_appointment) { FactoryBot.create(:appointment) }

        before do
            post "/users/#{my_appointment.user_id}/appointments", appointment_params:
                            { appointment: {
                                branch: my_appointment.branch,
                                date_for: my_appointment.date_for
                        } }
        end

        it 'returns the branch' do
            expect(json['branch']).to eq(my_appointment.branch)
        end

        it 'returns the date_for' do
            expect(json['date_for']).to eq(my_appointment.date_for)
        end

        it 'returns a created status' do
            expect(response).to have_http_status(:created)
        end
    end
    context 'with invalid parameters' do
        before do
            post "/users/#{my_appointment.user_id}/appointments", params:
                            { appointment: {
                                branch: "",
                                date_for: "2022-13-30T12:00:00.000Z"
                            } }
        end

      it 'returns a unprocessable entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end