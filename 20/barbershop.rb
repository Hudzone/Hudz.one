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
  f.write "#{@user_name} (phone: #{@phone}) booked at #{@date_time}."
  f.close

  erb :message
end
