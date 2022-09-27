class UniquePrefixes
  def run(words)
    new_word_1 = words[0]
    new_word_2 = words[1]

    last_same_letter_index = 0
    while (words[0].length > last_same_letter_index &&
           new_word_2.length > last_same_letter_index &&
           words[0][last_same_letter_index] == new_word_2[last_same_letter_index])
      last_same_letter_index += 1
    end

    while (new_word_2.length > last_same_letter_index + 1)
      new_word_2.chop!
    end

    last_same_letter_index = 0
    while (words[1].length > last_same_letter_index &&
           new_word_1.length > last_same_letter_index &&
           words[1][last_same_letter_index] == new_word_1[last_same_letter_index])
      last_same_letter_index += 1
    end

    while (new_word_1.length > last_same_letter_index + 1)
      new_word_1.chop!
    end

    [
      new_word_1,
      new_word_2,
    ]
  end
end
