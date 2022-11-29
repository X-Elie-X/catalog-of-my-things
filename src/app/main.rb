require_relative 'app'

def display
  puts 'Welcome to the Library App'
  puts 'Enter an option:'
  puts '1 - List all books'
  puts '2 - List all labels'
  puts '3 - Add a book'
  puts '0 - Exit'

  gets.chomp.to_i
end

def main
  app = App.new
  puts 'Welcome to the Library App'

  loop do
    option = display

    case option
    when 1
      app.list_books
    when 2
      app.list_labels
    when 3
      app.add_book
    when 0
      break
    else
      puts 'Invalid option'
    end
  end
end

main
