require 'data'

class Item
  attr_accessor :publish_date
  attr_reader :id, :genre, :label, :author, :archived

  def initialize(publish_date)
    @id = Random.rand(1...500)
    @publish_date = Date.parse(publish_date)
    @archived = false
  end

  def can_be_archived?
    (DateTime.now - @publish_date).to_i > 365
  end

  def move_to_archive
    @archived = true if can_be_archived
  end

  def add_label(label)
    label.items << self unless label.items.include?(self)
    @label = label
  end
end
