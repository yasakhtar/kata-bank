require_relative 'digit_lookup'

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
    digit_as_string
  end

  def to_account_string
    match = find_match
    match || '?'
  end
  
  private
  
  def digit_as_string
    @digit_lines.join("\n")
  end
  
  def find_match
    DigitLookup.find_match_for_lines(@digit_lines)
  end
  
end