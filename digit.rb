require_relative 'digits'

class Digit

  attr_accessor :digit_lines
  
  def self.build_from_lines(lines)
    digit = Digit.new
    digit.digit_lines = lines
    digit
  end
  
  def add_line(line)
    @digit_lines ||= []
    @digit_lines << line
  end

  def <<(value)
    add_line(value)
  end

  def to_s
    @digit_lines.join("\n")
  end

  def digit_as_string
    @digit_lines.join("\n")
  end

  def to_account_string
    
    match = Digits.find_match_for_string(self.digit_as_string) 
    match || '?'
  end
  
end