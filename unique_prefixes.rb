class UniquePrefixes
  def run(words)
    new_word_1 = words[0]
    new_word_2 = words[1]

    i = last_same_letter_index(words[0], new_word_2)
    while (new_word_2.length > i + 2)
      new_word_2.chop!
    end

    i = last_same_letter_index(words[1], new_word_1)
    target_size = i + 2
    while (new_word_1.length > i + 2)
      new_word_1.chop!
    end

    [
      new_word_1,
      new_word_2,
    ]
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
