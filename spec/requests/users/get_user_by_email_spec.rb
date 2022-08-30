require 'rails_helper'

RSpec.describe 'Users', type: :request do
    let(:my_user) {FactoryBot.create(:user)}
  describe 'get user by email' do
    before do
        get 'http://localhost:3000/users', params: {email: my_user.email}
    end
    
    it 'returns user id' do
      expect(json['id']).to be > 0
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end