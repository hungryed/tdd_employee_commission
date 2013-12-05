class EmployeeReader

  def initialize(filename)
    @filename = filename
  end

  def read_file
    CSV.foreach(@filename, headers: true, header_converters: :symbol) do |row|
      make_employee(row)
    end
  end

  private
  def make_employee(row)
    first_name = row[:first_name] ||= "[first_name]"
    last_name = row[:last_name] ||= "[last_name]"
    annual_income = row[:annual_income] ||= 0
    tax_paid = row[:tax_paid] ||= 0
    tax_rate = row[:tax_rate] ||= 0
    Employee.new(first_name, last_name, annual_income, tax_paid, tax_rate)
  end

end
