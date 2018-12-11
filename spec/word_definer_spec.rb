require ('rspec')
require ('./app')

describe('Word') do
  it('will start class Word with empty array of objects') do
    new_word = Word.new({:term=> 'Apple', :definition=> 'Round red fruit', :id=> nil})
    expect(Word.all).to(eq([]))
  end

  describe('#save') do
    it('will push a new Word into an array of Words') do
      word = Word.new({:term=> 'Apple', :definition=> 'Round red fruit', :id=> nil})
      expect(word.save()).to(eq([word]))
    end
  end

  describe('#add_definition') do
    it('will push a second definition into an array based on Term') do
      word = Word.new({:term=> 'Apple', :definition=> 'Round red fruit', :id=> nil})
      expect(word.add_definition('Grows on a Tree')).to(eq(['Round red fruit', 'Grows on a Tree']))
    end
  end
end
