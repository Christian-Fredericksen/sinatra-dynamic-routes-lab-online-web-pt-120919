require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name]
    "#{@reverse_name.reverse}"
  end
  
  get '/square/:number' do
    @number = params[:number]
    "#{@number.square}"
  end
  
  
  
end