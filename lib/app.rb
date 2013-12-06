require 'csv'
require_relative 'employee'
require_relative 'employee_reader'
require_relative 'liability'
require_relative 'tax_calculator'

filename = '../employee_data.csv'

testing = EmployeeReader.new(filename)
testing.read_file
employees = testing.employees

employees.each do |employee|
  employee_liability = TaxCalculator.liability(employee)
  employee_liability.display
end
