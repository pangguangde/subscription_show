require 'rest_client'
require 'multi_json'
require 'json'
class ExpressageController < ApplicationController

  def create
    p 'create'
    # binding.pry
    @order      = Expressage.new
    @order.code = params['expressage']['code']
    url         = "http://120.25.123.134:8080/app/SendManage/searchSend?ex_number=#{@order.code}&token=abc"
    get_result  = RestClient::Request.execute(method: :get, url: url)
    result_json = MultiJson.load(get_result, symbolize_keys: true)
    @order.company = result_json[:SearchSendResponse][:KuaidiBeans][0][:company]
    @order.owner= 'root'
    @order.status= result_json[:SearchSendResponse][:status]
    history_hash = {}
    result_json[:SearchSendResponse][:KuaidiBeans].each do |o|
      # binding.pry
      ts = o[:time]
      context = o[:context]
      history_hash[ts] = context
    end
    @order.history= history_hash.to_json
    # binding.pry
    @order.save
    render json: { msg: '添加成功' }
  end

  def index
    p 'haha'

  end

  def new
    p 'new'
  end

  def show
    p 'show'
  end


end
