# fronzen_string_literal: true

require 'dotenv'
require 'sinatra'
require 'sinatra/contrib'
require 'sinatra/activerecord'
Dotenv.load

require './app/adapters/controllers/user.controller.rb'

set :database, {adapter: 'sqlite3', database: ENV['DB_PATH']}

post '/users' do
  {result: UserController.create(params)}.to_json
end