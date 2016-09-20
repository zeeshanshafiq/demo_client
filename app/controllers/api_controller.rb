class ApiController < ApplicationController
  include TokenAuthenticable
  skip_before_action :verify_authenticity_token,
                     if: Proc.new { |c| c.request.format == 'application/json' }
#  skip_before_action :verify_authenticity_token
#   before_action :authenticate_resource_from_token!

  def resource_name
    :api_user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:api_user]
  end
end