require 'sinatra'

get '/' do
  erb :welcome
end

post '/' do
  @user_name = params[:user_name]
  @phone = params[:phone]
  @date_time = params[:date_time]

  @title = 'CONGRATS!'
  @message = "Dear, #{@user_name}, thank you for your apply! Waiting for you at #{@date_time}"

  f = File.open 'users.txt', 'a'
  f.write "#{@user_name} (phone: #{@phone}) booked at #{@date_time}\n"
  f.close

  erb :message
end

get '/adm_result' do
  erb :admin
end

post '/adm_result' do
  @user_name = params[:login]
  @password = params[:password]

  if @user_name == 'admin' && @password == 'admin'
    @users = File.open("users.txt","r")
    erb :adm_result
  else
    @oth = '<p>Access denied! Wrong login or password.</p>'
    erb :admin
  end

end