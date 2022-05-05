def generate_key(x)
    return rand(x)
end

def encode (key, text)
    letters = "abcdefghijklmnopqrstuvwxyz"
    word = ""
     text.chars.each do |c|
        pos = (letters.index(c) + key) % letters.length
        word += letters[pos]
    end
    return word
end

def decode (key, text) 
    letters = "abcdefghijklmnopqrstuvwxyz"
    word = ""
    text.chars.each do |c|
        pos = (letters.index(c) - key) % letters.length
        word += letters[pos]
    end
    return word
end

key = generate_key(26)
text = "abcdefg"
puts key
puts encoded_text = encode(key, text)
puts decode(key, encoded_text)