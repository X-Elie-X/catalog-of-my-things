require_relative './main_menu/main_menu'
require_relative './music_module/music_module'
require_relative './music_data/music_store'
require_relative './books_class/books'
require_relative './books_class/label'
require_relative './books_data_store/books_data'
require_relative './book_module/book_module'
require_relative './game_class/author'
require_relative './game_class/game'
require_relative './game_module/handle_game'
require_relative './game_store/game_store'

class App
  include MainMenu
  include MusicModule
  include BookMethods
  include HandleGame

  def initialize
    @books = []
    @labels = []
    @genres = []
    @music_albums = []
    @games = []
    @authors = []
  end

  def load
    @books = populate_book_list
    @labels = populate_label_list
    @genres = populate_genre_list
    @music_albums = populate_music_list
    @games = populate_games_list
    @authors = populate_authors_list
  end
end
