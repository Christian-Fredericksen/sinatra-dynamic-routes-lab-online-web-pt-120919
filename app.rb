require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name]
    "#{@reverse_name.reverse}"
  end
  
  get "/square/:number" do
    @result = params[:number].to_i*params[:number].to_i
    "#{@result}"
  end
  
  get '/say/:number/:phrase' do
    @product = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      @product += "#{@phrase}\n"
      
    end
    @product
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params[:word1/:word2/:word3/:word4/:word5]
    "#{"
  end
  
  
end