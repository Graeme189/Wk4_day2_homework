require('sinatra')
require('sinatra/reloader') if development?

require_relative('./models/rps.rb')
also_reload('./models/*')

get '/rock/scissors' do
   'rock wins'
end

get 'scissors/rock' do
  'rock wins'
end

get '/paper/rock' do
    'paper wins'
end

get '/rock/paper' do
    'paper wins'
end

get '/scissors/paper' do
    'scissors wins'
  end

get '/paper/scissors' do
    'scissors wins'
  end
