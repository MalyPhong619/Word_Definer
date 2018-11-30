class Word



  def initialize(term, definition)
    @term = term
    @definition = definition
  end

  def word_term()
    return @term + ": " + @definition
  end
end
