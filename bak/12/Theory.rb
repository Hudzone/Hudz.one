#Теория по 12му уроку

# .each_with_index do |(key,value), i| - для порядкового номера

# hash.keys - перечисление ключей
# hash.values - перечисление значений

#проверка ключа в хэше
1) if hash[key]
      ---
    end

2) if hash.has_key? 'key'
   if hash.key?('key')

#проверка значения в хэше
1) if hash.has_value? 'value'
   if hash.value?('value')
   if hash[key]

#Еще способ записи значений в хэш

hash.push(key,value)
hash.store(key,value)

#Вывод хэша
puts hash
puts hash.inspect

#очистить хэш
hash.clear

#чтобы удалить пару значений
hash.delete 'key'