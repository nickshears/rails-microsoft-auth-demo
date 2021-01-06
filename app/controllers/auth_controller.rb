class AuthController < ApplicationController

  def new
  end

  # def signin
  #   redirect_to '/auth/microsoft_graph_auth'
  # end

  def callback


  # Access the authentication hash for omniauth
  data = request.env['omniauth.auth']

  # Temporary for testing!
  render json: data.to_json


    # Access the authentication hash for omniauth
    # data = request.env['omniauth.auth']

    # microsoft_email_address = data.dig(:extra, :raw_info, :mail) || data.dig(:extra, :raw_info, :userPrincipalName)

    # if user_account = UserAccount.find_by(email: microsoft_email_address)
    #   session[:user_account_id] = user_account.id
    #   if session[:previously_requested_page]
    #     last_page = session[:previously_requested_page]
    #     session.delete(:previously_requested_page)
    #     redirect_to last_page
    #   else
    #     redirect_to root_path
    #   end
    # else
    #   redirect_to new_session_path, notice: "An account could not be found for #{microsoft_email_address}."
    # end
  end

end
