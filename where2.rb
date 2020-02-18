require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
  @lat = rand(-90.000...90.000)
  @long = rand(-180.000...180.000)
  view "where2"
end