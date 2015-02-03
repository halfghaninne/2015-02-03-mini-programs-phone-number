require 'pry'
require_relative 'phone-number-formatter'

class Driver
  
  def initialize
    puts "Please enter the number you would like to format:"
    number_to_format = gets.chomp.to_s
    if number_to_format.length = 10
      raw_answer = PhoneNumberFormatter.new(number_to_format)
      raw_answer.split_up_number
      formatted_answer = raw_answer.format
      puts formatted_answer
    else
      "I'm sorry that's not a valid number. Try again."
    end
    # come back to this loop and make it loop back through the program.
  end
  
end
