require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')
require('pry')

get ('/') do
  @list_of_terms = Word.all()
  erb(:input)
end

post ('/') do
  @list_of_terms = Word.all()
  input_term = params["input_term"]
  input_definition = params["input_definition"]
  terms_and_defs = Word.new(:term=>input_term, :definition=>input_definition)
  terms_and_defs.save()
  @list_of_terms = Word.all()

  erb(:input)
end
