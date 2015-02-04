require 'pry'
require_relative 'phone-number-formatter'

# Class: Driver
#
# Tracks members of certain dinner clubs and their total payments.
# Tracks their spending.
# Tracks outings and attendance.
# Allows individual members to "treat" the group and foot the bill.
#
# Attributes:
# None.
#
# Public Methods:
# + initialize

class Driver
  
  def initialize
    puts "Please enter the number you would like to format:"
    number_to_format = gets.chomp.to_s
    
    if number_to_format.length == 10
      raw_answer = PhoneNumberFormatter.new(number_to_format)
      raw_answer.split_up_number
    else
      "I'm sorry that's not a valid number. Try again."
    end
    
    # come back to this loop and make it loop back through the program.
  end
  
end

binding.pry
