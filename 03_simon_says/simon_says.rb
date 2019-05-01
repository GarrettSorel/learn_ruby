def echo(phrase)
  return phrase.to_s
end

def shout(phrase)
  return phrase.upcase
end

def repeat(phrase, num = 1)
  if num == 1
    return phrase.to_s + " " + phrase.to_s
  else
    return ((phrase.to_s + " ") * num).chomp(" ")
  end
end

def start_of_word(word, num)
  return word[0..num - 1]
end

def first_word(phrase)
  first_word = phrase.split
  return first_word[0]
end

def titleize(phrase)
  title = phrase.split
  new_title = []

  title.each do |word|
    if word == "and" || word == "over" || word == "the"
      new_title.push(word.downcase)
    else
      new_title.push(word.capitalize)
    end
  end

  new_title[0].capitalize!
  new_title.join(" ")

end
