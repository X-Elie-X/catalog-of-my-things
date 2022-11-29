require_relative './../app/label'
require_relative './../app/item'

describe Label do
  context 'when it is initialized' do
    it 'should create a label instance' do
      label = Label.new('Programming', 'white')
      item = Item.new('2018-03-11')
      label.add_item(item)
      expect(label.title).to eq('Programming')
      expect(label.color).to eq('white')
      expect(label.items).to eq([item])
    end
  end
end
