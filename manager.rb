require "./employee.rb"
require "./reportable.rb"

module Actualize
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
        @employees.each do |employee|
        employee.give_annual_raise
      end
    end
    def fire_all_employees

        @employees.length.times do |index|
           employee = @employees[index]
           employee.active = false

      end
    end
  end
end
