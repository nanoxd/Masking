class Encryptor
  
  def cipher
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
     'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
     'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
     'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
     'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
     'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
     'y' => 'l', 'z' => 'm'}
  end
  
  def encrypt_letter(letter)
    lowercase_letter = letter.downcase
    cipher[letter.downcase]
  end
  
  def encrypt(string)
    # Cuts the input string into letters
    letters = string.split("")
    
    # Encrypts letters one at a time
    results = []
    letters.each do |letter|
      encrypted_letter = encrypt_letter(letter)
      results.push(encrypted_letter)
    end
    
    # Join the results back together in one string
    results.join
  end
  
end