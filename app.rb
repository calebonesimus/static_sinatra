require 'sinatra'

# Goes to main article
get '/' do
  @author_info = {name: "Anya",
                  date_published: "July 12, 2015",
                  photo: "/images/anya.jpg"}
  erb :index
end

# Goes to a similar article with different author data
get '/second-article' do
  @author_info = {name: "Caleb",
                  date_published: "July 20, 2015",
                  photo: "/images/beer.jpg"}
  @headline = "Change me with the URL!"
  erb :second_article
end

# Second article with sidebar headline parameter, for fun.
get '/second-article/:headline' do |headline|
  @author_info = {name: "Caleb",
                  date_published: "July 20, 2015",
                  photo: "/images/beer.jpg"}
  @headline = headline
  erb :second_article
end
