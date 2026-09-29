def caesar_cipher(text, shift)
  text.chars.map { |char| shift_char(char, shift) }.join
end

def shift_char(char, shift)
  if char =~ /[A-Za-z]/
    base = char =~ /[A-Z]/ ? 'A'.ord : 'a'.ord
    (((char.ord - base + shift) % 26) + base).chr
  else
    char
  end
end
