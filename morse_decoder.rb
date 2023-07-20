class MorseDecoder
  MORSE_CODE = {
    ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E",
    "..-." => "F", "--." => "G", "...." => "H", ".." => "I", ".---" => "J",
    "-.-" => "K", ".-.." => "L", "--" => "M", "-." => "N", "---" => "O",
    ".--." => "P", "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T",
    "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y",
    "--.." => "Z"
  }.freeze
end

def self.decode_char(morse_char)
  MORSE_CODE[morse_char] || " "
end

def self.decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end