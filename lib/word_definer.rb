class Word
  @@list_of_words = []
  @@word_id = 1

    attr_accessor :term, :definition, :id

  def initialize(attributes)
    @term = attributes.fetch(:term)
    @definitions = [attributes.fetch(:definition)]
    @id = @@word_id
  end

  def save
    @@list_of_words.push(self)
    @id = @id +1
  end

  def self.all
    @@list_of_words
  end

  def add_definition(new_definition)
    @definitions.push(new_definition)
  end


end
