class SearchesController < ApplicationController
  def new
    search_term = params[:search_term]
    response = CurbHelper.new.curl_get(
      "https://api.instagram.com/v1/tags/#{search_term}/media/recent?access_token=",
      current_user.access_token
    )

    @posts = JSON.parse(response.body_str)['data']

    render :'homes/index'
  end
end
