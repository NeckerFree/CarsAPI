post 'Creates a pet' do
  tags 'Pets'
  consumes 'application/json', 'application/xml'
  parameter name: :pet, in: :body, schema: {
    type: :object,
    properties: {
      name: { type: :string },
      photo_url: { type: :string },
      status: { type: :string }
    },
    required: [ 'name', 'status' ]
  }

  response '201', 'pet created' do
    let(:pet) { { name: 'Dodo', status: 'available' } }
    run_test!
  end

  post('create user') do
    tags 'User'
    consumes 'application/json'
    parameter name: :user, in: :body, schema: {
      type: :object,
      properties: {
        name: { type: :string },
        email: { type: :string },
        password: { type: :string },
        password_confirmation: { type: :string },
        age: { type: :integer },
        phone: { type: :string }
      },
      required: [ 'name', 'email', 'password', 'password_confirmation' 'age', 'phone' ]
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