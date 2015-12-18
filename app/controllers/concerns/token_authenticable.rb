module TokenAuthenticable
  extend ActiveSupport::Concern
  
  def authenticate_resource_from_token!
    user = nil
    user_email = params[resource_name] && params[resource_name][:email]
    user = user_email && User.find_by_email(user_email)
    if user && Devise.secure_compare(user.authentication_token, params[resource_name][:token])
      sign_in resource_name, user
    end
  end

  def unauthorized_response
    {json: {}, status: :unauthorized}
  end

end