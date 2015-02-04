require 'pry'

# Class: PhoneNumberFormatter
#
# Transforms user-inputted number into a formatted string.
#
# Attributes:
# + @number       - String: user-inputted number, returned as a string
# + @area_code    - String: first three digits of user-inputted number
# + @city_code    - String: middle three digits of user-inputted number
# + @four_digits  - String: last four digits of user-inputted number
#
# Public Methods:
# + split_up_number  
# + format

class PhoneNumberFormatter
  
  def initialize(number)
    @number = number.to_s
  end

  # Public: .split_up_number
  # Splits @number string up into three separate parts.
  # 
  # Parameters: 
  # None.
  #
  # Returns:
  # Strings: @area_code, @city_code, @four_digits
  #
  # State Changes:
  # None.
  
  def split_up_number
    @area_code = @number.byteslice(0, 3)
    @city_code = @number.byteslice(3, 3)
    @four_digits = @number.byteslice(6, 4)
    
    return "(#{@area_code}) #{@city_code}-#{@four_digits}"
    
  end