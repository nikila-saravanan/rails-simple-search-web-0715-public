class Search

  def self.for(word)
    x = Word.where("name LIKE ?", "%#{word}%")
  end

end
