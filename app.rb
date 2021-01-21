require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    @name
  end
  
  get '/square/:number' do
    square = (params[:number].to_i * params[:number].to_i).to_s
    square
  end
  
  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:number1/:number2' do
    #binding.pry

    if params[:operation] == "add"
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i
      answer = (number1 + number2).to_s
    elsif params[:operation] == "subtract"
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i
      answer = (number1 - number2).to_s
    elsif params[:operation] == "multiply"
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i
      answer = (number1 * number2).to_s
    elsif params[:operation] == "divide"
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i
      answer = (number1 / number2).to_s
      answer
    end
  end

end