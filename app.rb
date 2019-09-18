require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do 
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirates = Pirates.new(params["pirate"]["name"], params["pirate"]["weight"], params["pirate"]["height"])

      params["pirate"]["ships"].each do |ship|
        Ship.new(ship["name"], ship["type"], ship["booty"])
      end
      
      @ships = Ship.all
      
      erb :show
    end 
    
  end
end
