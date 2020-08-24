require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
       erb :index
    end

    get '/new' do

        erb :new
    end

    post '/puppy' do
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])
        #@puppy.name = params[:name]
        #@puppy.breed = params[:breed]
        #@puppy.age = params[:age]
        erb :display_puppy
    end
end
