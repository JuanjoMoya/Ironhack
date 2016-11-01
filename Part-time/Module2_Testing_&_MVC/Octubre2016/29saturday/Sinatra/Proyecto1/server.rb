require "sinatra"

get "/" do
  "My first Sinatra app."
end

get "/about" do
  "Me llamo Juanjo, soy de Barcelona y tengo 44 años."
  @greeting = "Hello World"
  @time = Time.now
  erb :about
end

get "/pizza" do
  @ingredients = ["cheese", "pepperoni", "mushrooms"]
  erb :pizza
end

get "/users/:culo_de_mono" do
  @username = params[:culo_de_mono]
  erb :users
end

get "/hours/ago/:hours" do
  @hours = params[:hours]
  @time_now = Time.now
  @time_now = @time_now.hour - @hours.to_i
  erb :hours
end
