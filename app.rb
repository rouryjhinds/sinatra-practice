require "sinatra"
set :session_secret, 'super secret'

get '/' do
    "Hello world"
end

get '/secret' do
    "did you think I'd tell you the secret? No"
end

get '/anotherroute' do
    "just another route"
end

get '/cat' do
    @names = ["Amigo", "Oscar", "Viking"].sample
    erb(:index)
end
