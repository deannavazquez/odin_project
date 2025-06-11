# Implement a Caesar cipher that takes in a string and the shift factor and then outputs the modified string using a right shift:

#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"

def caesar_cipher(text, shift)
  result = ""

  text.each_char do |char|
    if char >= 'a' && char <= 'z' 
      base = 'a'.ord
      shifted = ((char.ord - base + shift) % 26 ) + base
      result += shifted.chr
    elsif char >= 'A' && char <= 'Z'
      base = 'A'.ord
      shifted = ((char.ord - base + shift) % 26) + base
      result += shifted.chr
    else
      result += char
    end
  end

  return result
end