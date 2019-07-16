require('sinatra')
require('sinatra/reloader') if development?

require_relative('./models/rps.rb')
also_reload('./models/*')

get '/rock/scissors' do
  @winner = RPSGame.check_win('rock', 'scissors')
  erb(:result)
end

get '/scissors/rock' do
  @winner = RPSGame.check_win('scissors', 'rock')
  erb(:result)
end

get '/paper/rock' do
  @winner = RPSGame.check_win('paper', 'rock')
  erb(:result)
end

get '/rock/paper' do
  @winner = RPSGame.check_win('rock', 'paper')
  erb(:result)
end

get '/scissors/paper' do
  @winner = RPSGame.check_win('scissors', 'paper')
  erb(:result)
end

get '/paper/scissors' do
  @winner = RPSGame.check_win('paper', 'scissors')
  erb(:result)
end

get '/rock/rock' do
  @winner = RPSGame.check_win('rock', 'rock')
  erb(:result)
end

get '/paper/paper' do
  @winner = RPSGame.check_win('paper', 'paper')
  erb(:result)
end

get '/scissors/scissors' do
  @winner = RPSGame.check_win('scissors', 'scissors')
  erb(:result)
end

get '/welcome' do
  erb(:welcome)
end
