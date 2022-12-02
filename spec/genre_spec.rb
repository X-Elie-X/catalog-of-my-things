require_relative '../src/app/music_class/genre'
require_relative '../src/app/item'
require 'date'

describe Genre do
  before(:each) do
    items = []
    name = 'hiphop'
    @genre = Genre.new(name, items)
  end
  context 'genre test' do
    it 'new instance' do
      expect(@genre.items).to eql []
    end
    it 'return hiphop' do
      expect(@genre.name).to eql 'hiphop'
    end
  end
end
