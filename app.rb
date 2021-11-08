require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/new' do
      erb :new
    end

    post '/show' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |args|
        Ship.new(args)
      end

      @ships = Ship.all

      erb :show
    end

  end
end
