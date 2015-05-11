class HomesController < ApplicationController
  def index
    if params[:code]
      # curl -F 'client_id=CLIENT_ID' \
      # -F 'client_secret=CLIENT_SECRET' \
      # -F 'grant_type=authorization_code' \
      # -F 'redirect_uri=AUTHORIZATION_REDIRECT_URI' \
      # -F 'code=CODE' \

      http = Curl.post(
        "https://api.instagram.com/oauth/access_token",
        {
          client_id: ENV['CLIENT_ID'], client_secret: ENV['CLIENT_SECRET'],
          grant_type: 'authorization_code', redirect_uri: ENV['REDIRECT_URI'],
          code: params[:code]
        }
      )
      access_token = JSON.parse(http.body_str)['access_token']
      current_user.access_token = access_token

      if current_user.save
        http = Curl.post(
          "https://api.instagram.com/v1/subscriptions/",
          {
            client_id: ENV['CLIENT_ID'], client_secret: ENV['CLIENT_SECRET'],
            object: 'user', aspect: 'media', callback_url: ENV['REDIRECT_URI'],
            verify_token: current_user.access_token
          }
        )
        body = JSON.parse(http.body_str)
      end
    end
  end
end
