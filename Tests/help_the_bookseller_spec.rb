# frozen_string_literal: true

require 'rspec'
require_relative '../Tasks/help_the_bookseler'

describe '#stockList' do
  let(:b) { ['ABAR 200', 'CDXE 500', 'CDXR 230', 'BKWR 250', 'DSRT 780'] }
  let(:c) { %w[A B] }

  context 'when parameters are nil' do
    it 'returns error' do
      expect { stockList(nil) }.to raise_error(ArgumentError)
      expect { stockList(nil, c) }.to raise_error(NoMethodError)
      expect { stockList(b, nil) }.to raise_error(NoMethodError)
    end
  end

  context 'when parameters are empty' do
    it 'returns empty string' do
      expect(stockList([], [])).to eq('')
      expect(stockList([], c)).to eq('')
      expect(stockList(b, [])).to eq('')
    end
  end

  context 'when parameters are not empty' do
    it 'returns sum to each category' do
      expect(stockList(b, c)).to eq('(A : 200) - (B : 250)')
      expect(stockList(b, ['D'])).to eq('(D : 780)')
      expect(stockList(b, %w[A C D])).to eq('(A : 200) - (C : 730) - (D : 780)')
    end
  end
end
