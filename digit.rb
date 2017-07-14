class Digit

  attr_accessor :digit_lines

  def initialize
    @digit_lines = []
    @converter = DigitConverter.new
  end

  def add_line(line)
    @digit_lines << line
  end

  def <<(value)
    @digit_lines << value
  end

  def to_s
    @digit_lines.join("\n")
  end

  def convert_to_string
    @digit_lines.join("\n")
  end

  def to_account_string
    digit_hash = @converter.digits_hash
    digit_as_string = convert_to_string
    match = digit_hash[digit_as_string]

    match || 'X'

  end




end