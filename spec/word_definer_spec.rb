require ('rspec')
require ('./app')


describe('Word') do
  it('will start class Word with empty array of objects') do
    word = Word.new({:term=> 'Apple', :definitions=> 'Round red fruit', :id=> nil})
    expect(Word.all).to(eq([]))
  end

  describe('#initialize') do
    it('will intialize term, definitions and create new id for new Word') do
      Word.clear
      word = Word.new({:term=> 'Apple', :definitions=> 'Round red fruit', :id=> nil})
      expect(word.term).to(eq('Apple'))
      expect(word.definitions).to(eq(['Round red fruit']))
      expect(word.id).to(eq(2))
    end
  end

  describe('#save') do
    it('will push a new Word into an array of Words') do
      word = Word.new({:term=> 'Apple', :definitions=> 'Round red fruit', :id=> nil})
      expect(word.save()).to(eq([word]))
    end
  end

  describe('#add_definition') do
    it('will push a second definition into an array based on Term') do
      word = Word.new({:term=> 'Apple', :definitions=> 'Round red fruit', :id=> nil})
      expect(word.add_definition('Grows on a Tree')).to(eq(['Round red fruit', 'Grows on a Tree']))
    end
  end

  describe('#self.all') do
    it('push all new class Word into an array of words') do
      Word.clear
      new_word = Word.new({:term=> 'Blue', :definitions=> 'Color of the sky', :id=> nil})
      word2 = Word.new({:term=> 'Orange', :definitions=> 'Round orange fruit', :id=> nil})
      new_word.save
      word2.save
      expect(Word.all).to(eq([new_word, word2]))
    end
  end

  describe('#self.clear') do
    it('will clear array of words') do
      word = Word.new({:term=> 'Apple', :definitions=> 'Round red fruit', :id=> nil})
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end
end
