class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  def authenticate
    # token=params[:token]
    # puts auth_token
    payload=JsonWebToken.decode(auth_token)
    @currnet_user= User.find(payload.first["sub"])
    # puts @currnet_user.id
    # puts @currnet_user.email
    # puts payload[:sub]
  rescue JWT::DecodeError
    render json: {errors: ["Invalid Token Error"]}, status: :unauthorized
  end
  def auth_token
    @auth_token ||= request.headers.fetch("Authorization", "")
  end
end
