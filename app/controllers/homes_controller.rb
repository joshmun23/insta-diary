class HomesController < ApplicationController
  def index
    if params[:code]
        ###############################
        ###  Retrieve Access Token  ###
        ###############################


      access_token = CurbHelper.new.retrieve_ig_access_token(
        "https://api.instagram.com/oauth/access_token",
        {
          client_id: ENV['CLIENT_ID'], client_secret: ENV['CLIENT_SECRET'],
          grant_type: 'authorization_code', redirect_uri: ENV['REDIRECT_URI'],
          code: params[:code]
        }
      )

      current_user.access_token = access_token

      if current_user.save

        ################################
        ##  Retrieve Photos and Tags  ##
        ################################

        response = CurbHelper.new.curl_get(
          "https://api.instagram.com/v1/tags/foodporn/media/recent?access_token=",
          current_user.access_token
        )

        @posts = JSON.parse(response.body_str)['data']

        ################################
        #SUBSCRIPTIONS TO RE-WORK LATER#
        ################################

        # http = Curl.post(
        #   "https://api.instagram.com/v1/subscriptions/",
        #   {
        #     client_id: ENV['CLIENT_ID'], client_secret: ENV['CLIENT_SECRET'],
        #     object: 'user', aspect: 'media', callback_url: ENV['REDIRECT_URI'],
        #     verify_token: current_user.access_token
        #   }
        # )
        # body = JSON.parse(http.body_str)
      end
    end
  end
end
