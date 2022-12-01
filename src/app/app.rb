# require_relative 'book'
# require_relative 'label'
# require_relative './presrve_data/preserve_data'
require_relative './main_menu/main_menu'
require_relative './music_module/music_module'
require_relative './music_data/music_store'
class App
  include MainMenu
  include MusicModule
  def initialize
    # @preserved_books = PreserveData.new('./src/store/books.json')
    # @preserved_labels = PreserveData.new('./src/store/labels.json')
    # @books = []
    # @labels = []
    @genres = []
    @music_albums = []
  end

  def load
    @genres = populate_genre_list
    @music_albums = populate_music_list
  end
  #   def list_all_books
  #     all_books = @preserved_books.load
  #     all_books.each_with_index do |book, index|
  #       puts "#{index + 1}. #{book['cover_state']}, #{book['publisher']}, #{book['publish_date']}"
  #     end
  #   end

  #   def list_all_labels
  #     all_labels = @preserved_labels.load

  #     all_labels.each_with_index do |label, index|
  #       puts "#{index + 1}. #{label['title']}, #{label['color']}"
  #     end
  #   end

  #   def preserve_all(path, data)
  #     preserve = PreserveData.new(path)
  #     preserve.save(data)
  #   end

  #   def add_label(item)
  #     puts 'Label title:'
  #     title = gets.chomp
  #     puts 'Label color:'
  #     color = gets.chomp

  #     label = Label.new(title, color)
  #     label.add_item(item)
  #     @labels << label

  #     arr = @preserved_labels.load

  #     @labels.each do |tag|
  #       arr << { title: tag.title, color: tag.color }
  #     end

  #     preserve_all('./src/store/labels.json', arr)

  #     puts 'Label added successfully'
  #   end

  #   def add_book
  #     puts 'Cover state:'
  #     cover_state = gets.chomp
  #     puts 'Publisher:'
  #     publisher = gets.chomp
  #     puts 'Publish date:'
  #     publish_date = gets.chomp

  #     book = Book.new(cover_state, publisher, publish_date)
  #     add_label(book)
  #     @books << book

  #     arr = @preserved_books.load

  #     @books.each do |item|
  #       arr << { cover_state: item.cover_state, publisher: item.publisher, publish_date: item.publish_date }
  #     end

  #     preserve_all('./src/store/books.json', arr)

  #     puts 'Book added successfully!'
  #   end
  # end
end
