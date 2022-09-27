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
  end

  it "previous but reversed" do
    expect(unique_prefixes.run(["bc", "a"])).to eq(["b", "a"])
  end

  skip "2 words 2 letters sharing first" do
    expect(unique_prefixes.run(["ab", "ac"])).to eq(["ab", "ac"])
  end

  skip "2 words 2 letters each dfferent" do
    expect(unique_prefixes.run(["ab", "cd"])).to eq(["a", "c"])
  end

  it "2 words 1 letter 2 letters"
  it "2 words 1 letter 2 letters sharing first one"
end
