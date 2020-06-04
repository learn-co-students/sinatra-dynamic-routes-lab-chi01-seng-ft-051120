require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @username = params[:name]
    @final = @username.reverse
    "#{@final}"
  end
  get '/square/:number' do
    @number = params[:number].to_i
    @sqr_num = @number**2
    "#{@sqr_num}"
  end
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @num

  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1, @word2, @word3, @word4, @word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if op == "add"
      answer = num1 + num2
    elsif op == "subtract"
      answer = num1 - num2
    elsif op == "multiply"
      answer = num1 * num2
    elsif op == "divide"
      answer = num1 / num2
    else
      answer = "There was an error"
    end
    answer.to_s
  end


end