require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    # get '/pirates' do
    #   @pirates = Pirate.all
    #
    #   erb :'pirates/index'
    # end

    get '/' do
      erb :root
    end


    get '/new' do
      
    end

    # get '/pirates/new' do
    #   erb :'pirates/new'
    # end

    get '/pirates/:id' do
      @pirate = Pirate.find(params[:id])

      erb :"pirates/show"
    end

    post '/pirates' do
      # binding.pry
      pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new(ship_data)
        ship.pirate = pirate
        ship.save
      end

      redirect to '/pirates/#{pirate.id}'
    end
end
end
