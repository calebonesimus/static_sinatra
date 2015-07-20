require 'sinatra'

get '/' do
  @author_info = {name: "Anya",
                  date_published: "July 12, 2015",
                  photo: "/images/anya.jpg"}
  erb :index
end

get '/second-article/:headline' do |headline|
  @author_info = {name: "Caleb",
                  date_published: "July 20, 2015",
                  photo: "/images/beer.jpg"}
  @headline = headline
  erb :second_article
end
