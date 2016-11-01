class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      (@hourly_rate * @hours_worked) - ((@hourly_rate * @hours_worked) * 0.18)
    end
end


class SalariedEmployee < Employee
    def initialize(name, email, yearly_salary)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      #(@yearly_salary/365)*7
      (@yearly_salary/52) - ((@yearly_salary/52) * 0.18)
    end
end


class MultiPaymentEmployee < Employee
    def initialize(name, email, yearly_salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      if @hours_worked > 40
        (@hourly_rate * @hours_worked) - ((@hourly_rate * @hours_worked) * 0.18)
      else
        #(@yearly_salary/365)*7
        (@yearly_salary/52) - ((@yearly_salary/52) * 0.18)
      end
    end
end


class Payroll
  attr_reader :employees
  def initialize(employees)
    @employees = employees
  end

  def notify_employee(employee)
    # email them
    employee_paid = @employees.find do |emp|
      emp.name == employee
    end
    "(Send a email to #{employee_paid.email}) Dear #{employee_paid.name}, we are going to paid you tomorrow."
  end

  def pay_employees
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week.
      # @employees.each do |empl|
      #   puts empl.calculate_salary
      #   total_week +=   empl.calculate_salary
      # end
      # puts total_week
      total_week = @employees.reduce(0) do |sum, empl|
        #puts empl.calculate_salary
        sum + empl.calculate_salary
      end
      puts total_week
  end
end


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
puts josh.calculate_salary

nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
puts nizar.calculate_salary

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
puts ted.calculate_salary

juanjo = HourlyEmployee.new('Juanjo', 'juanjoemail@example.com', 15, 40)
puts juanjo.calculate_salary

peter = HourlyEmployee.new('Peter', 'peteremail@example.com', 15, 40)
puts juanjo.calculate_salary

employees_array = [josh, nizar, ted, juanjo, peter]
my_payroll = Payroll.new(employees_array)
my_payroll.pay_employees

puts my_payroll.notify_employee("Ted")
