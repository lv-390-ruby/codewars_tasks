# frozen_string_literal: true

require 'rspec'
require_relative '../Tasks/string_to_number'

describe '#string_to_number' do
  context 'when parameter s is nil' do
    it 'returns zero' do
      expect(string_to_number(nil)).to eq(0)
    end
  end

  context 'when parameter s is empty' do
    it 'returns zero' do
      str = ''
      expect(str.empty?).to be true
      expect(string_to_number(str)).to eq(0)
    end
  end

  context 'when parameter s is not empty or nil' do
    it 'returns positive values' do
      expect(string_to_number('1')).to eq(1)
      expect(string_to_number('10')).to eq(10)
      expect(string_to_number('1000000000')).to eq(1_000_000_000)
    end

    it 'returns negative values' do
      expect(string_to_number('-1')).to eq(-1)
      expect(string_to_number('-910')).to eq(-910)
      expect(string_to_number('-1000000')).to eq(-1_000_000)
    end
  end
end

describe '#string_to_number' do
  context 'when parameter s is a fictitious number' do
    it 'returns zero' do
      expect(string_to_number('0.1')).to eq(0)
      expect(string_to_number('0.9')).to eq(0)
      expect(string_to_number('-0.2')).to eq(0)
    end

    it 'returns rounded up to the nearest one' do
      expect(string_to_number('1.1')).to eq(1)
      expect(string_to_number('1.6')).to eq(1)
      expect(string_to_number('-3.5')).to eq(-3)
    end
  end

  context 'when parameter s is a fictitious number' do
    it 'returns zero' do
      expect(string_to_number('0.1')).to eq(0)
      expect(string_to_number('0.5')).to eq(0)
      expect(string_to_number('0.9')).to eq(0)
      expect(string_to_number('-0.2')).to eq(0)
    end

    it 'returns rounded up to the nearest one' do
      expect(string_to_number('1.1')).to eq(1)
      expect(string_to_number('1.6')).to eq(1)
      expect(string_to_number('-3.5')).to eq(-3)
    end
  end
end
