require "sinatra"
set :session_secret, 'super secret'
# shotgun app.rb -p 4567
get '/' do
    "Hello world"
end

get '/secret' do
    "did you think I'd tell you the secret? No"
end

get '/anotherroute' do
    "just another route"
end

get '/random-cat' do
    @name = ["Roury", "Sihon", "Lucy", "Nala"].sample
    erb(:index)
end

get '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end

