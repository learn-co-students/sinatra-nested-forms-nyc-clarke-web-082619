require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      # @pirate1 = Pirate.new(param["pirate[name]"], param["pirate[weight]"], param["pirate[height]")
      # @ship1 = Ship.new(param[])
      status 200
      @pirate = Pirate.new(params[:pirate])
 
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
     
      @ships = Ship.all
     
      erb :'pirates/show'
    end

  end
end
