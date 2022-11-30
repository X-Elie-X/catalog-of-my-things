# frozen_string_literal: true

require_relative '../src/app/item'

today = Time.now.strftime('%Y/%M%D')
item = Item.new('name', today, true)
describe 'Testing Class -' do
  it 'checks type=Num of random id' do
    expect(item.id).to be_an(Numeric)
  end
  it 'check for date' do
    expect(item.archived).to be(false)
  end
end
