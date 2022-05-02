ALPHABET_SIZE = 26

# Set the shift array for cipher
# Use chars.map(&:ord)

def ceaser_cipher(string)
  shift_array = []
  char_line = string.chars.map(&:ord)

# Make sure it wraps after 'z'

  shift = 1
  ALPHABET_SIZE.times do |shift|
    shift_array << char_line.map do |c|
      ((c + shift) < 123 ? (c + shift) :(c + shift) - 26).chr
    end.join
  end


