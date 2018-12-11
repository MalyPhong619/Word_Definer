class Word
  @@list_of_words = []
  @@word_id = 1

    attr_accessor :term, :definitions, :id

  def initialize(attributes)
    @term = attributes.fetch(:term)
    @definitions = [attributes.fetch(:definitions)]
    @id = @@word_id
    @@word_id = @@word_id + 1
  end

  def save
    @@list_of_words.push(self)
  end

  def self.all
    @@list_of_words
  end

  def add_definition(new_definition)
    @definitions.push(new_definition)
  end

  def self.clear
    @@list_of_words = []
  end

  def self.find(id)
    @@list_of_words.each do |term|
      if term.id == id.to_i
        return term.term
      end
    end
  end
end
