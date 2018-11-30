require ('rspec')
require ('word_definer')

describe("Word") do
  it("will initialize term and definition and return the term") do
    newword = Word.new(:term=>"Apple", :definition=>"Round red fruit")
  expect(newword.word_term()).to(eq("Apple: Round red fruit"))
  end
end
