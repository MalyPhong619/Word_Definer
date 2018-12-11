require ('rspec')
require ('./app')

describe("Word") do
  it("will start class Word with empty array of objects") do
    new_word = Word.new(:term=>"Apple", :definition=>"Round red fruit")
    expect(Word.all).to(eq([]))
  end

  it("will push a new Word into an array of Words") do
    new_word = Word.new(:term=>"Apple", :definition=>"Round red fruit")
    expect(new_word.save()).to(eq([new_word]))
  end

  it("will push a second definition into an array based on Term") do
    apple1 = Word.new(:term => "Apple", :definition => "Round red fruit")
    expect(apple1.add_definition("Grows on a Tree")).to(eq(["Round red fruit", "Grows on a Tree"]))
  end
end
