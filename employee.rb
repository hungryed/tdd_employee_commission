class Employee
  attr_reader :first_name, :last_name, :annual_income, :tax_paid, :tax_rate

  def initialize(first_name, last_name, annual_income, tax_paid, tax_rate)
    @first_name = first_name ||= "[first_name]"
    @last_name = last_name ||= "[last_name]"
    @annual_income = annual_income ||= 0
    @tax_paid = tax_paid ||= 0
    @tax_rate = tax_rate ||= 0
  end
end
