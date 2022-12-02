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

def populate_games_list
  get_data('games').map do |game|
    Game.new(game['name'], game['player'], game['publish_date'],game['publish_date'])
  end
end

def populate_authors_list
  get_data('authors').map do |author|
    Authors.new(author['Full_name'])
  end
end