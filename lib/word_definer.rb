class Word
  @@list_of_terms = []

    attr_accessor :term, :definition

  def initialize(attributes)
    @term = attributes.fetch(:term)
    @definition = attributes.fetch(:definition)
  end

  def word_term()
    return @term + ": " + @definition
  end
end
