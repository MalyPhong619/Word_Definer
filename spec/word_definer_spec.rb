require ('rspec')
require ('./app')

describe("Word") do
  it("will initialize term and definition and both term and definition") do
  new_word = Word.new(:term=>"Apple", :definition=>"Round red fruit")
  expect(new_word.word_term()).to(eq("Apple: Round red fruit"))
  end

  it("will initialize term and definition and both term and definition") do
  new_word = Word.new(:term=>"Apple", :definition=>"Round red fruit")
  expect(new_word.save()).to(eq(["Round red fruit"]))
  end

end
