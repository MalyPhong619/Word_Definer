require ('rspec')
require ('./app')

describe("Word") do
  it("will initialize term and definition and both term and definition") do
  newword = Word.new(:term=>"Apple", :definition=>"Round red fruit")
  expect(newword.word_term()).to(eq("Apple: Round red fruit"))
  end
end
