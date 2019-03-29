# frozen_string_literal: true

require 'rspec'
require_relative '../Tasks/perimeter_of_squares.rb'

describe '#perimeter' do
  context 'when parameter n is nil' do
    it 'returns error' do
      expect { perimeter(nil) }.to raise_error(NoMethodError)
      expect { perimeter }.to raise_error(ArgumentError)
    end
  end

  context 'when parameter n is negative' do
    it 'returns error' do
      expect { perimeter(-1) }.to raise_error
    end
  end

  context 'when parameter n is zero' do
    it 'returns 4' do
      expect(perimeter(0)).to eq(4)
    end
  end

  context 'when parameter n is positive' do
    it 'returns perimeter' do
      expect(perimeter(1)).to eq(8)
      expect(perimeter(4)).to eq(48)
      expect(perimeter(10)).to eq(928)
      expect(perimeter(30)).to eq(14_098_308)
      expect(perimeter(100)).to eq(6_002_082_144_827_584_333_104)
    end
  end
end
