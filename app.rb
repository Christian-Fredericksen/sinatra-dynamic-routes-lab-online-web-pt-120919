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
  
  # get '/say/:number/:phrase' do
  #   @product = ""
  #   @number = params[:number].to_i
  #   @phrase = params[:phrase]
  #   @number.times do
  #     @product += "#{@phrase}\n"
  #     #@product += "\n"
  #   end
  #   @product
  # end
  
  
  get "/say/:number/:phrase" do
    #@the_product = ""
    @the_number = params[:number].to_i
    @the_phrase = params[:phrase]
    @the_number.times do
      @the_product += @the_phrase
      @the_product += "\n"
    end
    "#{@the_product}"
  end
  
end