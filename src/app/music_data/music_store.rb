require 'json'

def get_data(file)
  files = "./data/#{file}.json"
  File.new(files, 'w+') unless File.exist?(files)
  File.write(files, '[]') if File.empty?(files)
  contents = File.read(files)
  JSON.parse(contents)
end

def update_data(file, data)
  json_data = JSON.generate(data)
  File.write("./data/#{file}.json", json_data)
end

def populate_music_list
  get_data('music_album').map do |music|
    MusicAlbum.new(music['archived'], music['name'], music['publish_date'])
  end
end

def populate_genre_list
  get_data('genre').map do |genre|
    Genre.new(genre['name'])
  end
end
