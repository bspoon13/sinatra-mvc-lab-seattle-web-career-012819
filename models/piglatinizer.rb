class PigLatinizer

   def self.pigify_this(sentence)
      alpha = ('a'..'z').to_a
      vowels = %w[a e i o u]
      consonants = alpha - vowels
      if vowels.include?(sentence.downcase[0]) && sentence.downcase.length == 1
         (sentence + 'way')
      elsif vowels.include?(sentence.downcase[0])
         sentence + 'way'         
      elsif consonants.include?(sentence.downcase[0]) && consonants.include?(sentence.downcase[1]) && consonants.include?(sentence.downcase[2])
         sentence[3..-1] + sentence[0..2] + 'ay'
      elsif consonants.include?(sentence.downcase[0]) && consonants.include?(sentence.downcase[1])
         sentence[2..-1] + sentence[0..1] + 'ay'
      elsif consonants.include?(sentence.downcase[0])
         sentence[1..-1] + sentence[0] + 'ay'
      else
         sentence
      end
   end 

   def piglatinize(sent)
      #binding.pry
      word_array = sent.split(" ")
      word_array.map{|word| PigLatinizer.pigify_this(word)}.join(" ")
   end

end