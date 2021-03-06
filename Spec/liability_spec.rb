require 'rspec'
require_relative '../lib/liability'
require_relative '../lib/employee'
require_relative '../lib/tax_calculator'

describe Liability do
  employee = Employee.new('Joe', 'Schmo', 80000, 10000, 38)
  let(:liability){ Liability.new(employee, 0, 0)}

  it 'should require liability method to take an Employee class argument' do
    expect{ TaxCalculator.liability(1) }.to raise_error('1 is not an employee')
  end

  it 'has an #employee' do
    expect(liability).to respond_to :employee
  end

  context 'ensures that #employee is an employee' do
    it "accepts an employee argument" do
      expect(liability.employee).to be_an_instance_of Employee
    end

    it 'returns an error if #employee is not an employee' do
      expect{ Liability.new(0,0,0) }.to raise_error
    end
  end

  it 'has a #amount_due' do
    expect(liability).to respond_to :amount_due
  end

  it 'has a #amount_owed' do
    expect(liability).to respond_to :amount_owed
  end
end
