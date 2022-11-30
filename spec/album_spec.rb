require_relative '../music_class/music_album.rb'
require_relative '../src/app/item.rb'

describe MusicAlbum do
    before(:each) do archived = true
        date = Time.now
        name = 'name'
        @music = MusicAlbum.new(archived, name, date)
end
context 'test for Album'
do 
it 'test cheking' do expect(@music).to
    be_an_instance_of(MusicAlbum)
end
it 'test name' do
    expect(@music.name).to eql 'album'
end
it 'test date' do
    expect(@music.date).to
    be_an_instance_of(Time)
end
end
end