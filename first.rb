def decode_char(code)
  morse_code = {
    '.-' => 'A',
    '-...' => 'B',
    '---' => 'O',
    '-..-' => 'X',
    '..-.' => 'F',
    '..-' => 'U',
    '.-..' => 'L',
    '.-.' => 'R',
    '..' => 'I',
    '.' => 'E',
    '...' => 'S',
    '--' => 'M',
    '-.--' => 'Y'
  }
  new_char = ''
  arr = code.split
  arr.each do |str|
    new_char += morse_code[str.to_s] if str.to_s == code
  end
  puts(new_char)
end

decode_char('.-')
decode_char('-...')
decode_char('-- -.--')
