require_relative './option'
module MainMenu
  def main_menu # rubocop:disable Metrics/ClassLength
    Options.display
    option = gets.chomp.to_i
    case option
    when 1
      list_all_books
    when 2
      list_all_labels
    when 3
      add_a_book
    when 4
      add_music
    when 5
      list_of_albums
    when 6
      select_genre
    when 7
      add_genre
    when 8
      genre_list
    when 0
      exit
    else
      puts 'Invalid option'
    end
    main_menu
  end
end
