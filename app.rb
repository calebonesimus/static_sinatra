require 'sinatra'

get '/' do
  @author_info = {name: "Anya",
                  date_published: "July 12, 2015"}
  erb :index
end

get '/second-article' do
  @author_info = {name: "Caleb",
                  date_published: "July 20, 2015"}
  erb :second_article
end
