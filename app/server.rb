
class Chitter < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'
  use Rack::MethodOverride
  register Sinatra::Flash

  helpers do
    def current_maker
      @current_maker ||= Maker.get(session[:user_id])
    end
  end

  get '/' do
    erb(:index)
  end

end
