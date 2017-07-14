class Digit

  attr_accessor :digit_lines

  def initialize
    @digit_lines = []
  end

  def add_line(line)
    @digit_lines << line
  end

  def to_s
    @digit_lines.join("\n")
  end

end