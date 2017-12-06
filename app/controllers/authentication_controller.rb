class AuthenticationController < ApplicationController
  def login
    u=User.find_by(email: params[:user][:email])
    if u and u.authenticate(params[:user][:password])
      render json: {token: JsonWebToken.encode({sub: u.id})}
    else
      render json: {errors: ["Invalid email or password"]}
    end
  end

  def authenticate
    # token=params[:token]
    # puts auth_token
    payload=JsonWebToken.decode(auth_token)
    puts payload.first["sub"]
    @currnet_user= User.find(payload.first["sub"])
    # puts @currnet_user.id
    # puts @currnet_user.email
    # puts payload[:sub]
  rescue JWT::DecodeError
    rendor json: {errors: ["Invalid Token Error"]}, status: :unauthorized
  end

  def auth_token
    @auth_token ||= request.headers.fetch("Authorization", "")
  end
end
