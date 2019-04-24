class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{ first_name } #{ last_name } makes #{ salary } a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

class Manager < Employee
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # code to send email
    puts "Email sent"
  end

  def give_all_raises
    
    # Pseudocode
    # ================
    # input: @employees - the list of employee objects that this manager is overseeing
    # output or effect: each employee managed by this manager will get a raise

    # Steps
    #   1- look at list of employees this manager oversees
    #   2- look at every employee from list one at a time
    #   3- take the employee and give them a raise
    #   4- only give a raise once to each employee

    @employees.each do |employee|
      employee.give_annual_raise

    end
  end

  def fire_all_employees


    # Pseudocode
    # ================

    # input: @employess 
    # output: each employee managed by this manager will get fired.    change alll of this 

    # Steps
    #     1- look at list of employees this manager oversees.     retrieve all employess for this manager
    # #   2- look at every employee from list one at a time       have access to the employees one by one
    # #   3- take the employee and fire them                       fire the individual employee by changing their active status false
    #     4 - change their status to not active




    # @employees.each do |employee|          
    #   employee.active = false              
    #   p employee.active                      


      @employees.length.times do |index|
         employee = @employees[index]
         employee.active = false

    end
  end



    
end

employee_1 = Employee.new(
                          first_name: "Helen", 
                          last_name: "Bonom Carter", 
                          salary: 80000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Peter", 
                          last_name: "Gibbons", 
                          salary: 60000, 
                          active: true
                          )

manager = Manager.new(
                      first_name: "Leslie",
                      last_name: "Knope",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

# p employee_1
# p employee_2
# p manager
# employee_1.print_info
# employee_2.print_info

# manager.give_all_raises


p employee_1.active
p employee_2.active

manager.fire_all_employees

p employee_1.active
p employee_2.active
