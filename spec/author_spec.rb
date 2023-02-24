require 'rspec'
require 'spec_helper'

RSpec.describe Author do
  describe '#initialize' do
    it 'exists' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      expect(charlotte_bronte).to be_a(Author)
    end

    it 'initializes' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      expect(charlotte_bronte.name).to eq("Charlotte Bronte")
      expect(charlotte_bronte.books).to eq([])
    end
  end

  describe '#write books' do
    it 'can write a book' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      expect(jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")).to be_a(Book)
    end
   
    it 'book has a class' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

      expect(jane_eyre.class).to eq(Book)
    end
    
    it 'book has a title' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
  
      expect(jane_eyre.title).to eq("Jane Eyre")
    end
    
    
    it 'adds books to collecttion' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      villette = charlotte_bronte.write("Villette", "1853")
      charlotte_bronte.add_books(jane_eyre)
      charlotte_bronte.add_books(villette)

      expect(charlotte_bronte.books).to eq([jane_eyre, villette])
    end
  end  
end