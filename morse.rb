require_relative 'hash'

def decode_char(char)
  HASH[char]
end

def decode_word(word)
  new_word = ''
  for char in word.split
    new_word += decode_char(char)
  end
  new_word
end

def decode_message(message)
  new_message = ''
  for word in message.split('  ')
    new_message += decode_word(word)
    new_message += ' '
  end
  new_message
end

puts decode_message("..- .-- ..-  ..- .-- ..-")
