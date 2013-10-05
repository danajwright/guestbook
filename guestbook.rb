require 'sinatra'
# require 'sinatra/reloader'

# Responds with a form to create
# a new blog post

ARTICLES = []

get '/' do
  @method = "post"
  @action = "/"

  erb :index
end

# Recieves 'new' submission at post => '/article'

post '/' do

received_article = params[:blog]

ARTICLES.push(received_article)
@articles = ARTICLES

  # ARTICLES.length <<
  # received_article['id'] =

erb :index
end