require 'pry'
require 'minitest/autorun'
require_relative 'phone-number-formatter'

class PhoneNumberFormatterTest < Minitest::Test
  
  def test_too_long_of_input
    pf = PhoneNumberFormatter.new("40230942967989809")
    assert_equal("(402) 309-4296", pf.split_up_number)
  end
  
  def test_already_formatted_number #Meant to fail?????
    pf = PhoneNumberFormatter.new("(402) 309-4296")
    assert_equal("(402) 309-4296", pf.split_up_number)
  end
  
end