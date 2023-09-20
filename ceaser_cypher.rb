

def cypher(s, shift_factor)
  small=Array["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  capital=Array["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
  result = ""

  s.each_char do |char|
    if small.include? (char)
      index = (small.index(char) + shift_factor) % 26
      result += small[index]
    elsif capital.include?(char)
      index = (capital.index(char) + shift_factor) % 26
      result += capital[index]
    else
      result += char
    end

  end
  return result
end

input_string="What a string!"
shift_num=5
modified=cypher(input_string,shift_num)
puts modified
