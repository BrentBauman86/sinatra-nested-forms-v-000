require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/pirates' do
      @pirates = Pirate.all

      erb :'pirates/index'
    end

    get '/pirates/new' do
      erb :'pirates/new'
    end

    get '/pirates/:id' do
      @pirate = Pirate.find(params[:id])

      erb :"pirates/show"
    end

    post '/pirates' do
      # binding.pry 
    end

  end
end
