require 'rspec'
require_relative '../lib/tax_calculator'
require_relative '../lib/liability'
describe TaxCalculator do
  employee = Employee.new('Joe', 'Schmo', 80000, 10000, 38)

  it 'should have a liability method' do
    expect(TaxCalculator.methods.include?(:liability)).to be true
  end

  it 'should require liability method to take an Employee class argument' do
    expect{ TaxCalculator.liability(1) }.to raise_error('1 is not an employee')
  end

  it 'should return an instance of the Liability class' do
    expect(TaxCalculator.liability(employee)).to be_an_instance_of Liability
  end
end
