require 'rspec'
require_relative 'tax_calculator'

describe TaxCalculator do
  tax_class = TaxCalculator.new

  it 'should have a liability method' do
    expect(tax_class.methods.include?(:liability)).to eql(true)
  end

  it 'should require liability method to take an Employee class argument' do
    expect(tax_class.liability).to raise_error 'Wrong number of arguments(0 for 1)'
  end
end
