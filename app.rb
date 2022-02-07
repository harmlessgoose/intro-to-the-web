require 'sinatra'
require 'sinatra/reloader' if development? 




# routing file 
get '/' do
  "hello!"
end

get '/secret' do
    "Makers is lots of fun!"
end

get '/random-cat' do 

  @name = ["Amigo", "Misty", "Almond"].sample

  erb(:index) # method from templating system that renders file called index.erb

end 

get '/named-cat' do 

  # p params

  @name = params[:name]

  erb(:index) # method from templating system that renders file called index.erb

end 

