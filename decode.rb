#!/usr/bin/env ruby

@dictionary = { '.-' => 'A', '-...' => 'B',  '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I',
		 '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
		 '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z',
		'.----' => 1, '..---' => 2, '...--' => 3, '....-' => 4, '.....' => 5, '-....' => 6, '--...' => 7, '---..' => 8, '----.' => 9, '-----' => 0}

def decode_char(char)
	@morse_letter = @dictionary[char]
	puts @morse_letter
end

def decode_word(char)
	split_char = char.split(' ')

	split_char.each do |i| 
		@morse_letter = @dictionary[i]
		@str = ''
		@str += @morse_letter

	print @str
	end
end

# def decode(char)
# 	split_char = char.split('   ')

# 	split_char.each do |i| 
# 		@str = decode_word(i)

# 		print @str
# 		# @morse_letter = @dictionary[i]
# 		# @str = ''
# 		# @str += @morse_letter

# 	# print @str
# 	end

# 	# split_char.each do |i| 
# 	# 	@morse_letter = @dictionary[i]
# 	# 	@str = ''
# 	# 	@str += @morse_letter

# 	# print @str
# 	# end
# end

def decode(words)
    @split_words = words.split('   ')
    puts @split_words
    @split_words.each do |word|
    	@str =''
        @str += "#{decode_word(word)} "
        print @str
    end
    # print @str
  end


# def decode(words)
#     @split_words = words.split('   ')
#     puts @split_words
#     @split_words.each do |word|
#     	# puts word
#     	@str = ''
#         @str = decode_word(word)
#         print @str
#     end
#   end


# decode_char('.-')
# decode_word("-- -.--")
decode("-- -.--   -. .- -- .")