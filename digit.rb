class Digit

  attr_accessor :digit_lines

  def initialize
    @digit_lines = []
  end

  def add_segment(segment)
    @digit_lines << line
  end

  def <<(value)
    @digit_lines << value
  end

  def to_s
    @digit_lines.join("\n")
  end

  private

end