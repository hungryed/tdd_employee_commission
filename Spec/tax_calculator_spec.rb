require 'rspec'
require_relative '../lib/tax_calculator'

describe TaxCalculator do
  tax_class = TaxCalculator.new

  it 'should have a liability method' do
    expect(TaxCalculator.methods.include?(:liability)).to be true
  end

  it 'should require liability method to take an Employee class argument' do

  end
end
