require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'pony'
require 'sqlite3'

#метод должен объявляется выше чем вызывается
def get_db
    db = SQLite3::Database.new 'BarberShop.db'
    #db.results_as_hash = true
    return db
end

#инициализация прописывается тут, функция запускается всегда при перезапуске приложения
configure do
  db = get_db
  #команда для создания таблицы @db.execute 'синтаксис'
end

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

#  ПРОСТАЯ ВАЛИДАЦИЯ
#  if @usrname == ''
#    @error = 'Введите имя пользователя!'
#    return erb :visit
#  elsif @datetime == ''
#    @error = 'Введите дату и время записи!'
#    return erb :visit
#  elsif @phonenumber == ''
#    @error = 'Введите номер телефона!'
#    return erb :visit
#  elsif @brb == ''
#    @error = 'Выберите барбера!'
#    return erb :visit
# end

#  if @error != ''
#    return erb :visit
#  end

#  ВАЛИДАЦИЯ ЧЕРЕЗ ХЭШ
  
  hh = {:username => 'Введите имя',
        :date_time => 'Введите дату и время записи',
        :phone_number => 'Введите номер телефона',
        :barber => 'Выберите барбера'}

  @error = hh.select {|key,_| params[key]== ""}.values.join(", ")

  if @error != ''
    return erb :visit
  end

# еще вариант
# hh.each do |key,value|
#   if params[key] == ''
#     @error = hh[key]
#     return erb :visit
#   end
# end
    

 # f = File.open './public/users.txt', 'a'
 # f.write "#{@usrname} (телефон #{@phonenumber}) записался(сь) на #{@datetime} к #{@brb}. Выбран #{@color} цвет для покраски.\n"
 # f.close


 # для добавления данных в дб можно либо юзать execute либо prepare
 # как выглядит вствка данных

  db = get_db
  db.execute 'insert into Users (Name, Phone, DateStamp, Barber, Color) values (?,?,?,?,?)', [@usrname, @phonenumber, @datetime, @brb, @color]

  erb :visit
  
end

get '/something' do
  erb :about
end

get '/contacts' do 
  erb :contacts
end

post '/contacts' do
  require 'pony'
  @mail = params[:e_mail]
  @feedback = params[:story]

  cont = {
    :e_mail => 'Вы не ввели e-mail',
    :story => 'Вы не оставили отзыв'
  }

  cont.each do |key,value|
    if params[key] == ''
      @error = cont[key]

      return erb :contacts
    end
  end

  Pony.options = {   
                   :from           => 'fyodor.blyudov@yandex.ru',
                   :via            => :smtp,
                   :via_options    => {
                     :address        => 'smtp.yandex.ru',
                     :port           => '25',
                     :user_name      => '_____',
                     :password       => '______',
                     :authentication => :plain, 
                     :domain         => "http://127.0.0.1:4567/"
                    }
                 } 

  Pony.mail(subject: 'Hello', to: "fyodor@hudzone.ru", body: "#{@feedback}")

  kj = File.open './public/feedback.txt', 'a'
  kj.write "=============================================================================\n"
  kj.write "Электронная почта: #{@mail}\n"
  kj.write "Отзыв пользователя: \n"
  kj.write "#{@feedback}\n"
  kj.write "=============================================================================\n\n"
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

get '/showusers' do
  erb :showusers
end

post '/showusers' do
  @usr_list = []
  #при помощи do выполняем код, с выводом строк из базы данных
  db = get_db
  db.execute 'select * from Users' do |row|
    @usr_list << row
  end

  erb :showusers
end