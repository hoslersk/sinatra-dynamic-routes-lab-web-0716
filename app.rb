require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed_name = params[:name].to_s.reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared_num = params[:number].to_i * params[:number].to_i
    "#{@squared_num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @resp = (@phrase + "\n") * @num
    "#{@resp}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @results = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @results = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @results = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @results = params[:number1].to_i / params[:number2].to_i
    end
    "#{@results}"
  end

end
