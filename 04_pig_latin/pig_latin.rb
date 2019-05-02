def translate(str)
  transform = str.split('')
  vowels = /[aeiou]/
  consonants = /[bcdfghjklmnpqrstvwxyz]/

  if str.start_with?(vowels)
    return str + "ay"

  elsif transform[0] != vowels && transform[1].match?(vowels)
    transform.rotate!
    new_str = transform.join('')
    return new_str + "ay"

  elsif transform[0] != vowels && transform[1].match(consonants)
    transform.rotate!(2)
    new_str = transform.join('')
    return new_str + "ay"
  end
end
