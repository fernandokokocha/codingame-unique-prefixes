class UniquePrefixes
  def run(words)
    new_word_1 = words[0]
    new_word_2 = words[1]

    if (words[0][0] != new_word_2[0])
      new_word_2.chop! if (new_word_2.length > 1)
    end

    if (words[1][0] != new_word_1[0])
      new_word_1.chop! if (new_word_1.length > 1)
    end
    [
      new_word_1,
      new_word_2,
    ]
  end
end
