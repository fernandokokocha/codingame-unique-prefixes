class UniquePrefixes
  def run(words)
    new_words = []
    words.each_with_index do |word, index|
      target_size = word.size
      words.each_with_index do |other_word, i|
        next if index === i
        potential_target_size = target_size(word, other_word)
        target_size = [target_size, potential_target_size].min
      end

      new_word = word
      while (new_word.length > target_size)
        new_word.chop!
      end
      new_words << new_word
    end
    new_words
  end

  def target_size(word1, word2)
    i = last_same_letter_index(word1, word2)
    common_prefix_length = i + 1
    common_prefix_length + 1
  end

  def last_same_letter_index(word1, word2)
    index = 0
    while (word1.length > index &&
           word2.length > index &&
           word1[index] == word2[index])
      index += 1
    end
    index - 1
  end
end
