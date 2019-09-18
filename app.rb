require_relative 'config/environment'
require_relative 'models/puppy'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
  
    @new_pup = Puppy.new(name: params[:name], months_old: params[:age], breed: params[:breed])

    erb :display_puppy
  end

end
