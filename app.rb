require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    p params[:'Player 1']
    p params[:'Player 2']
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end