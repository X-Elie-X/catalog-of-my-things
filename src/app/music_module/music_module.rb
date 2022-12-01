require_relative '../music_class/genre'
require_relative '../music_class/music_album'
require_relative '../music_data/music_store'

module MusicModule
  def add_music
    puts 'enter [y/n] for archived: '
    archived = gets.chomp
    case archived
    when 'y'
      archived = true
    when 'n'
      archived = false
    end
    puts 'enter name: '
    name = gets.chomp
    puts 'date in this format (yyy-mm-dd): '
    publish_date = gets.chomp
    store_music = get_data('music_album')
    select_genre
    add = MusicAlbum.new(archived, name, publish_date)
    @music_albums << add
    music_datas = { archived: archived, name: name, publish_date: publish_date }
    store_music.push(music_datas)
    update_data('music_album', store_music)
    puts 'Music ADDED'
  end

  def list_of_albums
    if @music_albums.empty?
      puts 'No Music Rejester , Kindly Add Sum'
    else
      @music_albums.each_with_index do |music_album, index|
        puts "S.NO: #{index + 1}
                    name:#{music_album.name}
                    publish_date: #{music_album.publish_date}
                    on_spotify: #{music_album.on_spotify}
                    is_archived: #{music_album.archived}"
      end
    end
  end

  def select_genre
    if @genres.any?
      print "Enter 'Y' to Select if existed or 'N' to Creat a New Genre: "
      genre_option = gets.chomp.upcase
      case genre_option
      when 'N'
        add_genre
      when 'Y'
        puts 'Select a Music list'
        list_of_albums
        selected = gets.chomp.to_i
        @genres[selected]
      else
        puts "ERROR ,Please select 'N' or 'Y' "
      end
    else
      add_genre
    end
  end

  def add_genre
    puts 'Add Genre: '
    name = gets.chomp
    store_genre = get_data('genre')
    new_genre = Genre.new(name)
    @genres << new_genre unless @genres.include?(new_genre)
    genre_list = { name: name }
    store_genre.push(genre_list)
    update_data('genre', store_genre)
    puts 'Add successfully'
  end

  def genre_list
    if @genres.empty?
      puts 'No Genres Yet, Add now'
    else
      @genres.each_with_index do |genres, index|
        puts "S.No: #{index + 1}
                Genre: #{genres.name}"
      end
    end
  end
end
