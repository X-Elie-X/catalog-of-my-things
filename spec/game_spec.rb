require_relative '../src/app/game_class/game'
require 'date'

describe Game do
  context 'when game is not archived' do
    multiplayer = true
    last_played_at = 2018
    name = 'Game of thrones'
    publish_date = Date.parse('2010-01-01')
    game = Game.new(name, last_played_at, publish_date, multiplayer)
    it 'should not be archived' do
      expect(game.archived).to eq(true)
    end
    it 'should create a new game' do
      expect(game).to be_an_instance_of(Game)
    end
  end
end
