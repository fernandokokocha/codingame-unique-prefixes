require "./unique_prefixes"

RSpec.describe UniquePrefixes do
  let(:unique_prefixes) { UniquePrefixes.new }

  it "null case" do
    expect(unique_prefixes.run([])).to eq([])
  end

  it "2 words 1 letter each different" do
    expect(unique_prefixes.run(["a", "b"])).to eq(["a", "b"])
  end

  # * A word can be given several times in the given list. All the occurences of this word will share the same prefix.
  it "2 words 1 letter the same" do
    expect(unique_prefixes.run(["a", "a"])).to eq(["a", "a"])
  end
end
