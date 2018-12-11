require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')
require('pry')

get ('/') do
  @list_of_words = Word.all
  erb(:input)
end

post ('/') do
  @list_of_words = Word.all
  input_term = params["input_term"]
  input_definition = params["input_definition"]
  word = Word.new(:term=>input_term, :definitions=>input_definition)
  word.save()
  @list_of_words = Word.all
  erb(:input)
end

get ('output/.id') do
  @list_of_words = Word.all
end
