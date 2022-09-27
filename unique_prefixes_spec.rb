require "./unique_prefixes"

RSpec.describe UniquePrefixes do
  let(:unique_prefixes) { UniquePrefixes.new }

  it "null case" do
    expect(unique_prefixes.run([])).to eq([])
  end
end
