# frozen_string_literal: true

class Label
  attr_accessor :items
  attr_reader :id, :title, :color

  def initialize(title, color)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
  end
end
