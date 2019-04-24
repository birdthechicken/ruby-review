

# employee_1 = ["Helen", "Bonom Carter", 80000, true]
# employee_2 = ["Peter", "Gibbins", 60000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."
# puts "#{ employee_2[0] } #{employee_2[1] } makes #{ employee_2[2] } a year."

# employee_1 = {:first_name => "Helen", :last_name => "Bonom Carter", :salary => 80000, :active => true} #ruby sentex
# employee_2 = {first_name: "Peter", last_name: "Gibbons", salary: 60000, active: true}.       # java script sentex most common


 # puts "#{ employee_1[:first_name] } #{employee_1[:last_name] } makes #{ employee_1[:salary] } a year."
# puts "#{ employee_2[:first_name] } #{employee_2[:last_name] } makes #{ employee_2[:salary] } a year."


class Employee


 attr_reader :first_name, :last_name, :salary, :active      # r and tab, we dont need readermethods after this
 attr_writer :active      # w tab, we dont need writer method after this




  def initialize(input_options)                   #(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_options[:first_name]      #input_first_name
    @last_name = input_options[:last_name]        #input_last_name
    @salary = input_options[:salary]              #input_salary
    @active = input_options[:active]              #input_active
  end

  # def first_name     #reader method also callled gather to access or see the value inside an attritubes
  #   @first_name
  # end

  # def last_name
  #   @last_name.upcase
  # end

  # def salary
  #   @salary
  # end

  # def active
  #   @active
  # end

  # def active=(new_value)  #writer method also called setter
  #   @active = new_value
  # end

  def print_info
    puts "#{ first_name} #{ last_name} makes #{ salary } a year."
  end 

  def give_annual_raise
    @salary *= 1.05
  end


end

class Manager < Employee  # means everything written in Employee goes into Manager class

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Send email..."
    #code to sen email
    puts "Email sent"
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
                          )     #("Peter", "Gibbons", 60000, true)

manager = Manager.new(
                      first_name: "Leslie",
                      last_name: "Knope",
                      salary: 10000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

p employee_1
p employee_2
p manager



 # employee_1.print_info
 # employee_1.give_annual_raise
 # employee_.print_info
 
# puts employee_1.first_name.upcase
# puts employee_1.first_name
# puts employee_1.last_name
# puts employee_1.salary

# p employee_2.active
# employee_2.active= false
# p employee_2.active
