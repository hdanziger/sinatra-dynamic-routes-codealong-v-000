require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/mutiply/:num1/:num2' do
    @num_1 = params[:num1]
    @num_2 = params[:num2]
    "#{num1} + #{num2}"
  end

  # Code your final two routes here:

end
