# app.rb

require 'bundler'
Bundler.require
require "sinatra"
require "sinatra/activerecord"
require "./models.rb"

set :database, "sqlite3:myblogdb.sqlite3"
class ApplicationController < Sinatra::Base
    get "/" do
    	@posts = Post.all
    	erb :index
    end
end