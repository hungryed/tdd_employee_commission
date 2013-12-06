class EmployeeReader
  attr_accessor :employees

  def initialize(filename)
    @filename = filename
    @employees = []
  end

  def read_file
    CSV.foreach(@filename, headers: true, header_converters: :symbol) do |row|
      employee = make_employee(row)
      @employees << employee
    end
  end

  private
  def make_employee(row)
    first_name = row[:first_name]
    last_name = row[:last_name]
    annual_income = row[:annual_income].to_i
    tax_paid = row[:tax_paid].to_i
    tax_rate = row[:tax_rate].to_f / 100
    Employee.new(first_name, last_name, annual_income, tax_paid, tax_rate)
  end

end
