# frozen_string_literal: true

require_relative './app'
require_relative './music_module'
require 'json'

def display
  puts 'Welcome to the Library App'
  puts 'Enter an option:'
  puts '1 - List all books'
  puts '2 - List all labels'
  puts '3 - Add a book'
  puts '4 - add music'
  puts '5 - list of albums'
  puts '6 - select genre'
  puts '7 - add genre'
  puts '8 - genre list'
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
    when 4
      app.add_music
    when 5
      app.list_of_albums
    when 6
      app.select_genre
    when 7
      app.add_genre
    when 8
      app.genre_list
    when 0
      break
    else
      puts 'Invalid option'
    end
  end
end

main
