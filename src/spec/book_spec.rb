require_relative './../app/book'

describe Book do
  context 'when initialized' do
    it 'Should create a new book instance' do
      book = Book.new('Ruby Programming', 'Baraka Danny', '2015/10/10')
      expect(book.cover_state).to eq('Ruby Programming')
      expect(book.publisher).to eq('Baraka Danny')
      expect(book.can_be_archived?).to be(false)
    end
  end
end
