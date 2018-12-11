require ('rspec')
require ('./app')

describe("Word") do
  it("will initialize term and definition and both term and definition") do
    new_word = Word.new(:term=>"Apple", :definition=>"Round red fruit")
    expect(new_word.word_term()).to(eq("Apple: Round red fruit"))
  end

  it("will push a new Word into an array of Words") do
    new_word = Word.new(:term=>"Apple", :definition=>"Round red fruit")
    expect(new_word.save()).to(eq([new_word]))
  end

  # it("will push a second definition into an array based on Term") do
  #   apple1 = Word.new(:term => "Apple", :definition => "Round red fruit")
  #   apple2 = Word.new(:term => "Apple", :definition => "Seedy center and juicy bite")
  #   orange = Word.new(:term => "Orange", :definition => "Round orange fruit")
  #   expect(new_term.save()).to(eq(["Round red fruit", "Seedy center and juicy bite"]))
  # end
end
