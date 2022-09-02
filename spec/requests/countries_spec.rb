# require 'swagger_helper'

# RSpec.describe 'countries', type: :request do
#   let(:access_token) { FactoryBot.create(:api_key).access_token }
#   let(:Authorization) { "Bearer #{access_token}" }

#   path '/countries' do
#     get('list countries') do
#       response(200, 'successful') do
#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end

#     post('create country') do
#       tags 'Country'
#       consumes 'application/json'

#       security [Bearer: {}]
#       parameter name: :Authorization, in: :header, type: :string

#       parameter name: :country, in: :body, schema: {
#         type: :object,
#         properties: {
#           name: { type: :string }
#         },
#         required: ['name']
#       }
#       response(200, 'successful') do
#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end
#   end

#   path '/countries/{id}' do
#     # You'll want to customize the parameter types...
#     parameter name: 'id', in: :path, type: :string, description: 'id'

#     get('show country') do
#       response(200, 'successful') do
#         let(:id) { '123' }

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end

#     patch('update country') do
#       response(200, 'successful') do
#         let(:id) { '123' }

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end

#     put('update country') do
#       response(200, 'successful') do
#         let(:id) { '123' }

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end

#     delete('delete country') do
#       response(200, 'successful') do
#         let(:id) { '123' }

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end
#   end
# end
