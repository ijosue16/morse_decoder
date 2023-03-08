def decode_char(encoded_char)
  morse_characters = {
    'a' => '.-',
    'b' => '-...',
    'c' => '-.-.',
    'd' => '-..',
    'e' => '.',
    'f' => '..-.',
    'g' => '--.',
    'h' => '....',
    'i' => '..',
    'j' => '.---',
    'k' => '-.-',
    'l' => '.-..',
    'm' => '--',
    'n' => '-.',
    'o' => '---',
    'p' => '.--.',
    'q' => '--.-',
    'r' => '.-.',
    's' => '...',
    't' => '-',
    'u' => '..-',
    'v' => '...-',
    'w' => '.--',
    'x' => '-..-',
    'y' => '-.--',
    'z' => '--..'
  }
  morse_characters.each do |key, value|
    return key.upcase if encoded_char == value
  end
end

def decode_word(encoded_word)
  letters = encoded_word.split
  word = ''
  letters.each do |char|
    word += decode_char(char)
  end
  word
end

def decode_message(message)
  sentence = message.split('   ')
  answer = ''
  sentence.each do |word|
    answer += decode_word(word).concat(' ')
  end
  answer
end
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
