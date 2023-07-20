class MorseDecoder
  MORSE_CODE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }.freeze

  def self.decode_char(morse_char)
    MORSE_CODE[morse_char] || ' '
  end

  def self.decode_word(morse_word)
    morse_word.split.map { |morse_char| decode_char(morse_char) }.join
  end

  def self.decode_message(morse_message)
    morse_words = morse_message.split('   ')
    decoded_words = morse_words.map { |morse_word| decode_word(morse_word) }
    decoded_words.join(' ')
  end
end

# Test with the provided Morse code message
morse_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = MorseDecoder.decode_message(morse_message)
puts decoded_message
