class Word
  @@list_of_words = []

    attr_accessor :term, :definition

  def initialize(attributes)
    @term = attributes.fetch(:term)
    @definitions = [attributes.fetch(:definition)]
  end

  def save
    @@list_of_words.push(self)
  end
  def self.all()
    @@list_of_words
  end


  def add_definition(new_definition)
    @definitions.push(new_definition)
  end


end
