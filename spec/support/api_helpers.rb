module ApiHelpers
    def json
      JSON.parse(response.body)
    end
    
    def confirm_and_login_user(user)
      post 'http://localhost:3000/authenticate', params: {email: user.email, password: user.password}
      return (json['auth_token'])
    end

    def auth_headers(user)
      token = confirm_and_login_user(user)
      { 
        'Authorization': "Bearer #{token}"
      }
    end
end
# "ACCEPT" => "application/json",