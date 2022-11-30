class Genre
    attr_accessor :id, :name, :items
    def initialize(id,name)
        @id = Random.rand(1..999)
        @name = name
        @items = []
    end
    def item(item)
        @items << item unless @items.include?(item)
        items.item(self)
    end
end