class Book
  attr_accessor :title

  def title
    fix_title = @title.split(" ")
    ignore_words = %w(an in for and of a the)

    fix_title.map do |word|
      if ignore_words.include?(word)
        word.downcase!
      else
        word.capitalize!
      end
    end
    
    fix_title[0].capitalize!
    @title = fix_title.join(" ")
  end
end
