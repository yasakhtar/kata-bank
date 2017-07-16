require_relative 'digit'

class Account

  attr_reader :digits, :account_number
  
  def initialize(digits)
    @digits = digits
    @account_number = digits_to_account_number
  end
  
  def checksum
    checksum_total = 0
    
    @account_number.reverse.each_char.with_index(1) do |digit, index|
      checksum_total += digit.to_i * index  
    end
    
    checksum_total % 11
  end
  
  def status
    
    return  if account_number.include? '?'
              "ILL"
            else if checksum != 0
              "ERR"
            else 
              ""
            end
  end

  private
  
  def digits_to_account_number
    @digits.inject('') { | result, d | result << d.to_account_string }
  end

end