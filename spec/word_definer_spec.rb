require ('rspec')
require ('./app')

describe("Word") do
  it("will initialize term and definition and both term and definition") do
  new_word = Word.new(:term=>"Apple", :definition=>"Round red fruit")
  expect(new_word.word_term()).to(eq("Apple: Round red fruit"))
  end

  it("will push definition into an array") do
  new_word = Word.new(:term=>"Apple", :definition=>"Round red fruit")
  expect(new_word.save()).to(eq(["Round red fruit"]))
  end

  it("will push a second definition into an array based on Term") do
  new_word = Word.new(:term=>"Apple", :definition=>"Round red fruit")
  new_definition = Word.new(:term=> "Apple", :definition=> "Seedy center and juicy bite")
  new_term = Word.new(:term=>"Orange", :definition=>"Round orange fruit")
  expect(new_definition.save()).to(eq(["Round red fruit", "Seedy center and juicy bite"]))
  end

end
