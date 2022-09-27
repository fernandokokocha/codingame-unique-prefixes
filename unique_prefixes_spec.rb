require "./unique_prefixes"

RSpec.describe UniquePrefixes do
  let(:unique_prefixes) { UniquePrefixes.new }

  it "null case" do
    expect(unique_prefixes.run([])).to eq([])
  end

  it "2 words 1 letter each different" do
    expect(unique_prefixes.run(["a", "b"])).to eq(["a", "b"])
  end
end
