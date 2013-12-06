class Liability

  def initialize(employee, amount_paid, amount_owed)
    @employee = employee
    @amount_paid = amount_paid
    @amount_owed = amount_owed
    @amount_owed_string = amount_owed.abs.to_s.split("").reverse.each_slice(3).map(&:join).join(',').reverse
  end

  def display
    print "#{@employee.first_name} #{@employee.last_name}"
    print return_evaluator
    puts "$#{@amount_owed_string}"
  end

  def return_evaluator
    if employee_owed_money?
      " will receive a refund of "
    else
      " has a tax liability of "
    end
  end

  def employee_owed_money?
    @amount_owed < 0
  end

end
