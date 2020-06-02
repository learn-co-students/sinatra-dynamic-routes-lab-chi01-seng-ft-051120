require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    square = params[:number].to_i * params[:number].to_i
    square.to_s
  end

  get '/say/:number/:phrase' do
    new_string = ""
    params[:number].to_i.times do
      new_string += params[:phrase]
    end
    new_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    p string
  end

  get '/:operation/:number1/:number2' do
    cmd = params[:operation]
    result = 0

    if cmd == "add"
      result = params[:number1].to_i + params[:number2].to_i
    elsif cmd == "subtract"
      result = params[:number1].to_i - params[:number2].to_i
    elsif cmd == "multiply"
      result = params[:number1].to_i * params[:number2].to_i
    elsif cmd == "divide"
      result = params[:number1].to_i / params[:number2].to_i
    end

    return result.to_s
  end

end