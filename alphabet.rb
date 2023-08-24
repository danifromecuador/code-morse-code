require_relative 'hash'

def code_char(char)
  REVERSED_HASH[char]
end

def code_word(word)
  new_word = ''
  word.chars.each do |char|
    new_word += "#{code_char(char)} "
  end
  new_word
end

def code_message(message)
  new_message = ''
  message.split.each do |word|
    new_message += "#{code_word(word)} "
  end
  new_message
end

puts code_message('AHORA AL FIN VUELVO A SER YO')
