require 'sinatra'
require 'slim'
require 'json'

load 'parse_names.rb'

get '/' do
  slim :index
end

post '/' do
  content_type :json
  parse_names(params[:names]).shuffle.each_slice(2).to_a.to_json
end
