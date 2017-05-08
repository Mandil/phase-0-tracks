
require_relative 'WordGuessing'

describe WordGuessing do
  let(:guessing) { WordGuessing.new }

  it "find a letter index/s in a word" do
    expect(guessing.find_index('l','hello')).to eq [2,3]
  end

   it "find a letter index/s in a word" do
    expect(guessing.find_index('e','welcome')).to eq [1,6]
  end

end