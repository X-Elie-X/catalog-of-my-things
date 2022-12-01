require_relative '../src/app/music_class/music_album'
require_relative '../src/app/item'

describe MusicAlbum do
  before(:each) do
    archived = true
    date = Time.now
    name = 'name'
    @music = MusicAlbum.new(archived, name, date)
  end
  context 'test for Album' do
    it 'test cheking' do
      expect(@music).to be_an_instance_of MusicAlbum
    end
    it 'test name' do
      expect(@music.name).to eql 'name'
    end
    it 'test date' do
      expect(@music.publish_date).to be_an_instance_of Time
    end
  end
end
