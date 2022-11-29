require_relative './../app/book'

describe Book do
  context 'when it's initialized' do
    it 'should create a book instance' do
      book = Book.new('Book title', 'publisher', '2021-05-12')
      expect(book.cover_state).to eq('Book title')
      expect(book.publisher).to eq('publisher')
      expect(book.can_be_archived?).to eq(false)
    end
  end
end
