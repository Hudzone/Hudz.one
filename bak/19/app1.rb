require 'sinatra'

# / это корень сайта
get '/' do
  erb :index
end

get '/contacts' do 
  @title = 'Contacts'
  @message = 'Blank page'  

  erb :message
end

get '/faq' do 
  @title = 'FAQ'
  @message = 'Blank page'

  erb :message
end

post '/' do
  @login = params[:aaa]
  @password = params[:bbb]

  if @login == 'admin' && @password == 'secret'
    erb :welcome
  else
    erb :failed
  end
  
end