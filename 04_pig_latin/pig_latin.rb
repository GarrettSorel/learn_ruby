def translate(str)
  transform = str.split(" ")
  vowels = /^[aeiou]/
  consonants = /[bcdfghjklmnprstvwxyz]/
  square = /[squ]/
  pig_latin = []

  transform.map do |s|
    if vowels.match(s)
      pig_latin.push(s + "ay")
    elsif s.start_with?(consonants) && s[1].match?(vowels)
      pig_latin.push(s[1..-1] + s[0] + "ay")
    elsif s.start_with?(consonants) && s[1].match?(consonants) && s[2].match?(vowels)
      pig_latin.push(s[2..-1] + s[0..1] + "ay")
    elsif s.start_with?(consonants) && s[1].match?(consonants) && s[2].match?(consonants)
      pig_latin.push(s[3..-1] + s[0..2] + "ay")
    elsif s.start_with?(/[qu]/)
      pig_latin.push(s[2..-1] + "quay")
  end

  pig_latin.join(" ")
end
