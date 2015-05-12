class CurbHelper
  def initialize
    @response = ''
  end

  def curl_get(url, access_token='')
    @response = Curl.get(url + access_token)
  end

  def curl_post(url, options={})
    @response = Curl.post(url, options)
  end

  def retrieve_ig_access_token(url, options={})
    curl_post(url, options)
    access_token = JSON.parse(@response.body_str)['access_token']
  end

  def retrieve_ig_posts_from_tags
  end
end
