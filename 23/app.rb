require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb "Добро пожаловать на сайт нашего барбершопа! Мы открылись и рады новым клиентам"      
end

get '/termin' do 
  erb :termin
end

get '/visit' do
  erb :visit
end

post '/visit' do 
  @usrname = params[:username]
  @datetime = params[:date_time]
  @phonenumber = params[:phone_number]
  @brb = params[:barber]
  @color = params[:color]

  f = File.open './public/users.txt', 'a'
  f.write "#{@usrname} (телефон #{@phonenumber}) записался(сь) на #{@datetime} к #{@brb}. Выбран #{@color} цвет для покраски.\n"
  f.close

  erb :visit
end

get '/something' do
  erb :about
end

get '/contacts' do 
  erb :contacts
end

post '/contacts' do
  @mail = params[:e_mail]
  @feedback = params[:story]

  kj = File.open './public/feedback.txt', 'a'
  kj.write "=============================================================================\n"
  kj.write "Электронная почта: #{@mail}\n"
  kj.write "Отзыв пользователя: \n"
  kj.write "#{@feedback}\n"
  kj.write "=============================================================================\n"
  kj.close

  yt = File.open './public/contacts.txt', 'a'
  yt.write "#{@mail}\n"
  yt.close

  erb :contacts
end

get '/account' do
  erb :auth
end

post '/account' do
  @log = params[:login]
  @password = params[:passw]

  if @log == 'secret' && @password == 'secret'
    erb :account
  else
    @acc_den = '<p>Доступ запрещен! Логин или пароль не подходят!</p>'
    erb :auth
  end
end