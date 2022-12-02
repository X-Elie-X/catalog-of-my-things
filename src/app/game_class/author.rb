class Author
    attr_accessor :full_name, :items, :id
    def initialize(full_name)
        @id  = Random.rand(1..1000)
@full_name = full_name
@items = []
    end
    def add_item(item)
        @items.push(item)
        item.author = self
    end
end