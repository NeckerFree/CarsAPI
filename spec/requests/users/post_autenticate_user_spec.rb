require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:my_user) { FactoryBot.create(:user) }
  describe 'POST / authenticate' do
    before do
      post 'http://localhost:3000/authenticate', params: { email: my_user.email, password: my_user.password }
    end

    it 'returns token' do
      expect(json['auth_token'].length).to be > 0
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end
