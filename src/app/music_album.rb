# frozen_string_literal: true

require_relative './item'
class MusicAlbum < Item
  attr_reader :itunes

  def initialize(id, name, date, archived: false, itunes: false)
    super(id, name, date, archived)
    @itunes = itunes
  end

  def saved?
    super && @itunes
  end
end
