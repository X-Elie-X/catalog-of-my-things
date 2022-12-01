require_relative '../item'

class Game < Item
    attr_accessor :player, :last_played_at, :publish_date
    def initialize(name, player,last_played_at,publish_date,arvhive:false)
        super(id,name,archived,publish_date)
        @player = player
        @last_played_at = last_played_at
    end
    private
    def can_be_archived?
        current = Time.new.year
        remaining_year = current - last_played_at
        super() && (remaining_year > 2)
    end
end