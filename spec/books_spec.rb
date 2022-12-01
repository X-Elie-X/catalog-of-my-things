require_relative '../src/app/books_class/books'

describe Books do
  before(:each) do
    name = 'Data Structure'
    publish_date = Time.new(2022, 10, 10)
    publisher = 'Baraka Danny'
    cover_state = 'best'
    @books = Books.new(name, publisher, publish_date, cover_state)
  end
  context 'book class Unit Test' do
    it 'should create a new Book Instance' do
      expect(@books).to be_an_instance_of(Books)
    end
    it 'should create a new Book Instance' do
      expect(@books).to be_kind_of(Item)
    end
    it 'should have a book name' do
      expect(@books.name).to eq('Data Structure')
    end
    it 'should have a book publisher' do
      expect(@books.publisher).to eq('Baraka Danny')
    end
    it 'should have a book cover state' do
      expect(@books.cover_state).to eq('best')
    end
    it 'should have a book publsih date' do
      expect(@books.publish_date).to be_an_instance_of(Time)
    end
  end
end
