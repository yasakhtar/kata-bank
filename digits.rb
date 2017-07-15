class Digits
  
  def self.find_match_for_string(str)
    @@digits_hash[str.strip]
  end
  
  def self.digits_hash
    @@digits_hash
  end
  
  def self.create_digits_hash
    
    zero = '
 _ 
| |
|_|'.strip

    one = '
   
  |
  |'.strip

    two = '
 _ 
 _|
|_ '.strip

    three = '
 _ 
 _|
 _|'.strip

    four = '
   
|_|
  |'.strip

    five = '
 _ 
|_ 
 _|'.strip

    six = '
 _ 
|_ 
|_|'.strip

    seven = '
 _ 
  |
  |'.strip

    eight ='
 _ 
|_|
|_|'.strip

    nine = '
 _ 
|_|
 _|'.strip
    
    {
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
  
  @@digits_hash = self.create_digits_hash
  
end
