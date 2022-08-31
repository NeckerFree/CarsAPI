require 'swagger_helper'

RSpec.describe 'authentication', type: :request do
  path '/authenticate' do
    post('authenticate authentication') do
      tags 'JWT'
      consumes 'application/json'
      parameter email: :password, in: :body, schema: {
        type: :object,
        properties: {
          email: { type: :string },
          password: { type: :string }
        },
        required: %w[name password]
      }
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
