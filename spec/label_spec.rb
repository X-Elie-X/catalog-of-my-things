require_relative '../src/app/books_class/label'

describe Label do
  before(:each) do
    items = []
    title = 'New'
    color = 'red'
    @label = Label.new(title, color, items)
  end
  context 'Label Class Unit Test' do
    it 'should return a new instance for label' do
      expect(@label).to be_an_instance_of(Label)
    end
    it 'should return a new instance for label' do
      expect(@label.title).to eql('New')
    end
    it 'should return a new instance for label' do
      expect(@label.color).to eql('red')
    end
    it 'should return a new instance for label' do
      expect(@label.items).to eql []
    end
  end
end
