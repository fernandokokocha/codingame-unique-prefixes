class UniquePrefixes
  def run(words)
    new_word_1 = words[0]
    new_word_2 = words[1]

    target_size_2 = target_size(words[0], new_word_2)
    while (new_word_2.length > target_size_2)
      new_word_2.chop!
    end

    target_size_1 = target_size(words[1], new_word_1)
    while (new_word_1.length > target_size_1)
      new_word_1.chop!
    end

    [
      new_word_1,
      new_word_2,
    ]
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
