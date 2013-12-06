class TaxCalculator

  def self.liability(employee)
    annual_income = employee.annual_income
    tax_paid = employee.tax_paid
    tax_rate = employee.tax_rate
    amount_owed = ((annual_income * tax_rate) - tax_paid).to_i
    Liability.new(employee, tax_paid, amount_owed)
  end

end
