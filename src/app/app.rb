require_relative './main_menu/main_menu'
require_relative './music_module/music_module'
require_relative './music_data/music_store'
require_relative './books_class/books'
require_relative './books_class/label'
require_relative './books_data_store/books_data'
require_relative './book_module/book_module'

class App
  include MainMenu
  include MusicModule
  include BookMethods

  def initialize
    @books = []
    @labels = []
    @genres = []
    @music_albums = []
    @authors = []
  end

  def load
    @books = populate_book_list
    @labels = populate_label_list
    @genres = populate_genre_list
    @music_albums = populate_music_list
    # @authors = populate_authors_list
  end
end
