#!/usr/bin/env ruby

@dictionary = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
                '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
                '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
                '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
                '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
                '--..' => 'Z', '.----' => 1, '..---' => 2, '...--' => 3, '....-' => 4,
                '.....' => 5, '-....' => 6, '--...' => 7, '---..' => 8, '----.' => 9,
                '-----' => 0 }

def decode_char(char)
  @morse_letter = @dictionary[char]
  @morse_lette
end

def decode_word(char)
  split_char = char.split
  @str = ''
  split_char.each do |i|
    @str += decode_char(i)
  end
  @str
end

def decode(words)
  @split_word = words.split('   ')
  @str = ''
  @split_words.each do |word|
    @str += "#{decode_word(word)} "
  end
  @str
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
