require 'rspec'
require_relative 'slamming_lockers.rb'

describe '#locker_run' do
  context 'when parameter x is zero' do
    it 'returns empty array' do
      expect(locker_run(0).empty?).to be true
      expect(locker_run(0)).to eq([])
    end
  end

  context 'when parameter x is a negative number or nil' do
    it 'returns error' do
      expect { locker_run(-1) }.to raise_error(Math::DomainError)
      expect { locker_run(nil) }.to raise_error(TypeError)
    end
  end

  context 'when parameter x is a positive number' do
    it 'returns not empty array' do
      expect(locker_run(1).empty?).to be false
      expect(locker_run(1)).to eq([1])
      expect(locker_run(10)).to eq([1, 4, 9])
      expect(locker_run(50)).to eq([1, 4, 9, 16, 25, 36, 49])
      expect(locker_run(100)).to eq([1, 4, 9, 16, 25, 36, 49, 64, 81, 100])
      expect(locker_run(500)).to eq([1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484])
    end
  end
end
