require_relative 'lib/post'
require_relative 'lib/memo'
require_relative 'lib/link'
require_relative 'lib/task'

puts "Привет! Я твой блокнот!"
puts "Что изволишь записать в меня?"

choices = Post.post_types

choice = -1

until choice.between?(0, choices.size)
  choices.each_with_index do |type, index|
    puts "  #{index}. #{type}"
  end

  choice = STDIN.gets.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Ура, запись сохранена!"
