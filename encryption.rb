require 'digest'

puts 'Введите слово или фразу для шифрования:'
user_input = gets.chomp

puts 'Каким способом зашифровать:'
puts "1. MD5 \n2. SHA1"
answer = gets.to_i

case answer
when 1
  puts Digest::MD5.hexdigest(user_input)
when 2
  puts Digest::SHA1.hexdigest(user_input)
else
  puts 'Неверный ввод'
end
