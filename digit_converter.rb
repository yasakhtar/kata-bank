class DigitConverter

  attr_accessor :digits_hash

  def initialize
    create_digits_hash
  end

  def find_digit(str)
    digits_hash[str]
  end

  def to_s
    @digits_hash.each { |k, v| puts k}
  end

  private

  def create_digits_hash

    zero = 
' _
| |
|_|'
    one = 
'   
  |
  |'

    two = 
' _ 
 _|
|_ '

    three =
' _ 
 _|
 _|'

    four = 
'   
|_|
  |'

    five =
 ' _ 
|_ 
 _|'

    six = 
' _ 
|_ 
|_|'

    seven =
' _ 
  |
  |'

    eight =
' _ 
|_|
|_|'

    nine = 
' _ 
|_|
 _|'

    @digits_hash = {
      #zero => "0",
      one => "1",
      two => "2",
      three => "3",
      four => "4",
      five => "5",
      six => "6",
      seven => "7",
      eight => "8",
      nine => "9"
    }
  end
end