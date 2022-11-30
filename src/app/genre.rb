# frozen_string_literal: true

class Genre
  attr_accessor :id, :name, :items

  def initialize(_id, name)
    @id = Random.rand(1..999)
    @name = name
    @items = []
  end

  def item(item)
    @items << item unless @items.include?(item)
    items.item(self)
  end
end
