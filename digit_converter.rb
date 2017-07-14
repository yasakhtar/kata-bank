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
' _ ' + "\n" +
'| |' + "\n" +
'|_|'
   
    one = 
'   ' + "\n" +
'  |' + "\n" +
'  |'

    two = 
' _ ' + "\n" +
' _|' + "\n" +
'|_ '

    three =
' _ ' + "\n" +
' _|' + "\n" +
' _|'

    four = 
'   ' + "\n" +
'|_|' + "\n" +
'  |'

    five =
' _ ' + "\n" +
'|_ ' + "\n" +
' _|'

    six = 
' _ ' + "\n" +
'|_ ' + "\n" +
'|_|'

    seven =
' _ ' + "\n" +
'  |' + "\n" +
'  |'

    eight =
' _ ' + "\n" +
'|_|' + "\n" +
'|_|'

    nine = 
' _ ' + "\n" +
'|_|' + "\n" +
' _|'

    @digits_hash = {
      zero => "0",
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