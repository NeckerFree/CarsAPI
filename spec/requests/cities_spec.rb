# require 'swagger_helper'

# RSpec.describe 'cities', type: :request do
#   path '/countries/{country_id}/cities' do
#     # You'll want to customize the parameter types...
#     parameter name: 'country_id', in: :path, type: :string, description: 'country_id'

#     get('list cities') do
#       response(200, 'successful') do
#         let(:country_id) { '123' }

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

#     post('create city') do
#       response(200, 'successful') do
#         let(:country_id) { '123' }

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

#   path '/countries/{country_id}/cities/{id}' do
#     # You'll want to customize the parameter types...
#     parameter name: 'country_id', in: :path, type: :string, description: 'country_id'
#     parameter name: 'id', in: :path, type: :string, description: 'id'

#     get('show city') do
#       response(200, 'successful') do
#         let(:country_id) { '123' }
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

#     patch('update city') do
#       response(200, 'successful') do
#         let(:country_id) { '123' }
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

#     put('update city') do
#       response(200, 'successful') do
#         let(:country_id) { '123' }
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

#     delete('delete city') do
#       response(200, 'successful') do
#         let(:country_id) { '123' }
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
