require 'rspec'
require_relative 'employee'

describe Employee do
  describe "Full Employee info" do
    first_name = 'Joe'
    last_name = 'Schmo'
    annual_income = 80000
    tax_paid = 10000
    tax_rate = 38

    new_employee = Employee.new(first_name, last_name, annual_income, tax_paid, tax_rate)

    it "should allow first name to be accessed" do
      expect(new_employee.first_name).to eql('Joe')
    end

    it "should allow last name to be accessed" do
      expect(new_employee.last_name).to eql('Schmo')
    end

    it "should allow annual_income to be accessed" do
      expect(new_employee.annual_income).to eql(80000)
    end

    it "should allow tax paid to be accessed" do
      expect(new_employee.tax_paid).to eql(10000)
    end

    it "should allow tax rate to be accessed" do
      expect(new_employee.tax_rate).to eql(38)
    end
  end

  describe "Allow nil values"
    first_name = nil
    last_name = nil
    annual_income = nil
    tax_paid = nil
    tax_rate = nil

    new_employee = Employee.new(first_name, last_name, annual_income, tax_paid, tax_rate)

    it "should allow nil value for first_name" do
      expect(new_employee.first_name).to eql('[first_name]')
    end

    it "should allow nil value for last_name" do
      expect(new_employee.last_name).to eql('[last_name]')
    end

    it "should allow nil value for annual_income" do
      expect(new_employee.annual_income).to eql(0)
    end

    it "should allow nil value for tax_paid" do
      expect(new_employee.tax_paid).to eql(0)
    end

    it "should allow nil value for tax_rate" do
      expect(new_employee.tax_rate).to eql(0)
    end

end
