require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    say_smth = ""
    params[:number].to_i.times do
      say_smth += params[:phrase]
    end
    say_smth
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    a = params[:number1].to_i
    b = params[:number2].to_i
    
    case params[:operation]
    when 'add'
      (a + b).to_s
    when 'subtract'
      (a - b).to_s
    when 'multiply'
      (a * b).to_s
    when 'divide'
      (a / b).to_s
    end
  end

end