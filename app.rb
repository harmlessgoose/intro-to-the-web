require 'sinatra'
require 'sinatra/reloader' if development? 




# routing file 
get '/' do
  "hello!"
end

get '/secret' do
    "Makers is lots of fun!"
end

get '/cat' do 

  @cat_name = ["Amigo", "Misty", "Almond"].sample

  erb(:index) # method from templating system that renders file called index.erb

end 

