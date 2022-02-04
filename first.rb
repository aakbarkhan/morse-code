def decode_char(char)
    morse_chars_codes = {
      '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
      '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
      '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
      '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
      '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
      '--..' => 'Z'
    }
    morse_chars_codes.each do |key, value|
      return value if key == char
    end
  end
  
  def decode_word(word)
    str_val = ''
    word.split.each do |char|
      str_val += decode_char(char)
    end
    str_val
  end
  
  def decode(msg)
    msg_split = msg.split('   ')
    msg_sentence = ''
    msg_split.each do |word|
      msg_sentence += "#{decode_word(word)} "
    end
    msg_sentence.strip
  end
  
  puts decode_char('.-')
  puts decode_word('-- -.--')
  puts decode('.- -.- ..-   --.. .- -.-. .... . .   .- -. -..   .-. --- .-.. .- -. -..   .... .- -..   .-   --. --- --- -..   -.-. --- -.. .. -. --.   ... . ... ... .. --- -.')
  puts decode('..   .-.. --- ...- .   -.-. --- -.. .. -. --.')