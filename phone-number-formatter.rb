require 'pry'

class PhoneNumberFormatter
  
  def initialize(number)
    number_as_string = number.to_s
    @number = number_as_string
  end
  
  def split_up_number
    @area_code = @number.byteslice(0, 3)
    @city_code = @number.byteslice(3, 3)
    @four_digits = @number.byteslice(6, 4)
    # puts @area_code
    # puts @city_code
    # puts @four_digits
    # puts @number
  end
  
  def format
    puts "(#{@area_code}) #{@city_code}-#{@four_digits}"
  end
  
end
