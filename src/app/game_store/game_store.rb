require 'json'

def get_data(file)
  file_path = "./data/#{file}.json"
  File.new(file_path, 'w+') unless File.exist?(file_path)
  File.write(file_path, '[]') if File.empty?(file_path)
  contents = File.read(file_path)
  JSON.parse(contents)
end

def update_data(file, data)
  json_data = JSON.generate(data)
  File.write("./data/#{file}.json", json_data)
end

def populate_games_list
  get_data('games').map do |game|
    Game.new(game['name'], game['multiplayer'], game['last_publish_date'], game['publish_date'])
  end
end

def populate_authors_list
  get_data('authors').map do |author|
    Author.new(author['first_name'], author['last_name'])
  end
end
