require 'rest_client'
require 'multi_json'
require 'open-uri'
require 'expressage_controller'
# require 'pry'
# require 'pry'
class WelcomeController < ApplicationController
  def index
    p Time.now

    get_result = RestClient::Request.execute(
      method: :get,
      url: 'http://apis.baidu.com/heweather/weather/free?city=hangzhou',
      headers:{apikey: '5e5eea4cb7a97b70de4f85fcd570936b'})
    result_json = MultiJson.load(get_result, symbolize_keys: true)
    p Time.now
    @weather_now = result_json[:'HeWeather data service 3.0'][0][:now]
    @weather_hourly = result_json[:'HeWeather data service 3.0'][0][:hourly_forecast]
    @weather_daily = result_json[:'HeWeather data service 3.0'][0][:daily_forecast]
    # binding.pry
    # p result_json

    @order = Expressage.last
    @his_json = MultiJson.load(@order['history'], symbolize_keys: true)
    # @his_json.each do |o|
    #   p o
    # end
    # binding.pry

  end
end
