require 'sinatra'

# Choose a lipsum article
get '/' do
  erb :index
end

# Goes to cupcake article
get '/cupcake' do
  @author_info = {name: "Anya",
                  date_published: "July 12, 2015",
                  photo: "/images/anya.jpg"}
  erb :cupcake
end

# Goes to a similar article with different author data
get '/standard' do
  @author_info = {name: "Caleb",
                  date_published: "July 20, 2015",
                  photo: "/images/beer.jpg"}
  @headline = "Change me with the URL!"
  erb :standard
end

# Second article with sidebar headline parameter, for fun.
get '/standard/:headline' do |headline|
  @author_info = {name: "Caleb",
                  date_published: "July 20, 2015",
                  photo: "/images/beer.jpg"}
  @headline = headline
  erb :standard
end
