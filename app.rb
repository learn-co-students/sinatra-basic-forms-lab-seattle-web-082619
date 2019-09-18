require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    #send user to puppy creation page
    get '/new' do
        erb :create_puppy
    end

    #create puppy and send user to newly created puppy page
    post '/puppy' do
        @puppy = Puppy.new(params["name"], params["breed"], params["age"])
        erb :display_puppy
    end

end
