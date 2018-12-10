class Word
  @@list_of_definitions = []

    attr_accessor :term, :definition

  def initialize(attributes)
    @term = attributes.fetch(:term)
    @definition = attributes.fetch(:definition)
  end

  def word_term
    @term + ": " + @definition
  end

  def save
    @@list_of_definitions.push(self.definition)
  end

  def additional_definition
    if self.term == attributes.fetch(:term)
      @@list_of_definitions.push(attributes.fetch(:definition))
    end
  end


end
