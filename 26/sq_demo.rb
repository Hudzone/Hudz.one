#Подключаем гем
require 'sqlite3'

#Подключаем базу данных
db_name = SQLite3::Database.new 'BarberShop.db'

#Выполняем запрос
db_name.execute "запрос"

#Или так
db_name.execute "SELECT * FROM TableName" do |var|
	puts var
	puts "===="
end

#Закрываем базу данных
db_name.close
