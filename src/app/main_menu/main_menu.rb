require_relative './option'
module MainMenu
  # rubocop:disable Metrics/CyclomaticComplexity

  def main_menu
    Options.display
    option = gets.chomp.to_i
    case option
    when 1
      list_all_books
    when 2
      list_all_labels
    when 3
      list_of_albums
    when 4
      list_games
    when 5
      list_authors
    when 6
      genre_list

    when 7
      add_a_book

    when 8
      add_music
    when 9
      select_genre
    when 10
      add_genre
    when 11
      add_a_game
    when 12
      add_author
    when 0
      exit
    else
      puts 'Invalid option'
    end
    main_menu
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
