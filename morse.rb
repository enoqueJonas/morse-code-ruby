$morse_code = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z',
}

def decode_letter(code='')
    print $morse_code[code]
end

def decode_word(word)
    _codearr = word.split
    _res = ''
    _codearr.each{|c| _res+= $morse_code[c]}
    print _res + " "
end

def decode_phrase(code)
    _codearr = code.split"   "
    _codearr.each{|word| decode_word word}
end

decode_letter('.-')

decode_word('-..- -.--')

decode_phrase('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
