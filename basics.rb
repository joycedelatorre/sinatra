# require 'rubygems'
require 'sinatra'

get '/' do
  "Hello World!"
end

get '/about' do
  'A little about me.'
end

get '/hello/:name' do
  "Hello there, #{params[:name].upcase}."
end

get '/hello/:name/:city' do
  "Hello there, #{params[:name].upcase} from #{params[:city]}."
end

get '/more/*' do
  # Anything included in the URL after /more/ will be accessible through the :splat key in the params array.
  params[:splat]
  # "Hello, #{params[:splat]}."
end

get '/form' do
  erb :form
end

post '/form' do
  "You said #{params[:message]}"
end


