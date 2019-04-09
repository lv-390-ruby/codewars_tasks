# frozen_string_literal: true

require 'rspec'
require_relative '../Tasks/slamming_lockers.rb'

describe '#locker_run' do
  context 'when parameter x is zero' do
    it 'returns empty array' do
      expect(locker_run(0)).to be_empty
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
      expect(locker_run(1)).not_to be_empty
      expect(locker_run(1)).to eq([1])
      expect(locker_run(10)).to eq([1, 4, 9])
      expect(locker_run(50)).to eq([1, 4, 9, 16, 25, 36, 49])
      expect(locker_run(100)).to eq([1, 4, 9, 16, 25, 36, 49, 64, 81, 100])
    end
  end
end
