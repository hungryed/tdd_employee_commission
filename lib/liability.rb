class Liability
  attr_reader :employee, :amount_due, :amount_owed

  def initialize(employee, amount_paid, amount_owed)
    fail "#{employee} is not an employee" if !employee.is_a?(Employee)
    @employee = employee
    @amount_paid = amount_paid
    @amount_owed = amount_owed
    @amount_owed_string = amount_owed.abs.to_s.split('').reverse.each_slice(3).map(&:join).join(',').reverse
  end

  def display
    p "#{@employee.first_name} #{@employee.last_name} #{evaluate_return} #{@amount_owed_string}"
    # p evaluate_return
    # p "$#{@amount_owed_string}"
  end

  def evaluate_return
    if employee_owed_money?
      'will receive a refund of'
    else
      'has a tax liability of'
    end
  end

  def employee_owed_money?
    @amount_owed < 0
  end
end
