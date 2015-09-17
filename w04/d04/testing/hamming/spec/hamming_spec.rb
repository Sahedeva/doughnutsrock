require_relative 'spec_helper'
require_relative '../lib/hamming'

RSpec.describe Hamming do

  describe ".compute" do

    it "returns 0 for identical single nucelotide strands" do
      expect(Hamming.compute('A', 'A')).to eq 0
    end

    it "returns 0 for long identical strands" do
      expect(Hamming.compute('GGACTGA', 'GGACTGA')).to eq 0
    end

    it "returns 1 for single nucelotide strands off by 1" do
      expect(Hamming.compute('A', 'G')).to eq 1
    end

    it "returns 9 for long strands off by 9" do
      expect(Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')).to eq 9
    end

    it "returns 0 for 2 empty strands" do
      expect(Hamming.compute('', '')).to eq 0
    end

    it "raises an ArgumentError if the first strand is longer than the second" do
      expect{Hamming.compute('ATAG', 'AGT')}.to raise_error(ArgumentError)
    end

    it "raises an ArgumentError if the second strand is longer than the first" do
      expect{Hamming.compute('ATA', 'AGTG')}.to raise_error(ArgumentError)
    end

  end

end