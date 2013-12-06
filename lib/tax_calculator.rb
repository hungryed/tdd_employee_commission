class TaxCalculator
  class << self
    def get_amount_owed
      (get_amount_due - @tax_paid).to_i
    end

    def liability(employee)
      fail "#{employee} is not an employee" if !employee.is_a?(Employee)
      @annual_income = employee.annual_income
      @tax_paid = employee.tax_paid
      @tax_rate = employee.tax_rate
      @amount_due = get_amount_due
      @amount_owed = get_amount_owed
      Liability.new(employee, @amount_due, @amount_owed)
    end

    def get_amount_due
      @annual_income * @tax_rate
    end
  end
end
