require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')
require('pry')

get('/') do
  @list_of_words = Word.all()
  erb(:input)
end

post('/') do
  @list_of_words = Word.all()
  input_term = params["input_term"]
  input_definition = params["input_definition"]
  @word = Word.new(:term=>input_term, :definitions=>input_definition, :id=> nil)
  @word.save()
  @list_of_words = Word.all()
  erb(:input)
end

get('/output/:id') do
  @word = Word.find(params[:id])
  @list_of_words = Word.all()
  erb(:output)
end

post('/output/:id') do
  @list_of_words = Word.all()
  @word = Word.find(params[:id])
  @list_of_words = Word.all()
  erb(:output)
end
