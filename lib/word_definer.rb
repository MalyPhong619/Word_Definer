class Word
  @@list_of_words = []

    attr_accessor :term, :definition

  def initialize(attributes)
    @term = attributes.fetch(:term)
    @definition = [attributes.fetch(:definition)]
  end

  def word_term
    @term + ": " + @definition
  end

  def save
    @@list_of_words.push(self)
  end

  def new_definition()

  end


end
