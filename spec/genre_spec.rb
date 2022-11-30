require_relative '../music_class/genre.rb'
require_relative '../src/app/item.rb'
require 'date'

describe Genre do before(:each) do items = []
    name = 'hiphop'
    @genre = Genre.new(items, name)
end
context 'genre test'
do
it 'new instance' do 
    expect(@genre.items).to eql []
end
if 'return hiphop' do expect(@genre.name).toeq('hiphop')
end
end
end