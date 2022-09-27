require "./unique_prefixes"

RSpec.describe UniquePrefixes do
  let(:unique_prefixes) { UniquePrefixes.new }

  it "2 words 1 letter each different" do
    expect(unique_prefixes.run(["a", "b"])).to eq(["a", "b"])
  end

  # A word can be given several times in the given list. All the occurences of this word will share the same prefix.
  it "2 words 1 letter the same" do
    expect(unique_prefixes.run(["a", "a"])).to eq(["a", "a"])
  end

  it "2 words 1 letter 2 letters sharing first" do
    expect(unique_prefixes.run(["a", "ab"])).to eq(["a", "ab"])
  end

  it "2 words 1 letter 2 letters unique" do
    expect(unique_prefixes.run(["a", "bc"])).to eq(["a", "b"])
    expect(unique_prefixes.run(["bc", "a"])).to eq(["b", "a"])
  end

  it "2 words 1 letter 3 letters unique" do
    expect(unique_prefixes.run(["a", "bcd"])).to eq(["a", "b"])
    expect(unique_prefixes.run(["bcd", "a"])).to eq(["b", "a"])
  end

  it "2 words 2 letters 3 letters unique" do
    expect(unique_prefixes.run(["ab", "cde"])).to eq(["a", "c"])
    expect(unique_prefixes.run(["cde", "ab"])).to eq(["c", "a"])
  end

  it "2 words 2 letters 3 letters sharing first" do
    expect(unique_prefixes.run(["ab", "ade"])).to eq(["ab", "ad"])
    expect(unique_prefixes.run(["ade", "ab"])).to eq(["ad", "ab"])
  end

  it "2 words 8 letters 12 letters sharing first 5" do
    expect(unique_prefixes.run(["abcdexyz", "abcdefghijkl"])).to eq(["abcdex", "abcdef"])
    expect(unique_prefixes.run(["abcdefghijkl", "abcdexyz"])).to eq(["abcdef", "abcdex"])
  end

  it "3 words 1 letter each different" do
    expect(unique_prefixes.run(["a", "b", "c"])).to eq(["a", "b", "c"])
  end

  it "3 words 1 letter each same" do
    expect(unique_prefixes.run(["a", "a", "a"])).to eq(["a", "a", "a"])
  end

  it "3 words 1 letter 2 same" do
    expect(unique_prefixes.run(["a", "a", "b"])).to eq(["a", "a", "b"])
  end

  it "3 words matrioshka" do
    expect(unique_prefixes.run(["a", "aa", "aaa"])).to eq(["a", "aa", "aaa"])
  end

  it "3 words matrioshka backwards" do
    expect(unique_prefixes.run(["aaa", "aa", "a"])).to eq(["aaa", "aa", "a"])
  end

  it "4 words matrioshka" do
    expect(unique_prefixes.run(["a", "aa", "aaa", "aaaa"])).to eq(["a", "aa", "aaa", "aaaa"])
  end
end
