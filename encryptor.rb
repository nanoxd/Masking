class Encryptor
  attr_accessor :rotation

  def cipher
    characters = ('a'..'z').to_a
    rotated_characters =characters.rotate(@rotation)
    pairs = characters.zip(rotated_characters)
    Hash[pairs]
    # {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
    #  'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
    #  'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
    #  'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
    #  'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
    #  'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
    #  'y' => 'l', 'z' => 'm'}
  end

  def encrypt_letter(letter)
    lowercase_letter = letter.downcase
    cipher[lowercase_letter]
  end

  def encrypt(string)
    letters = string.split("")

    results = letters.collect do |letter|
      encrypted_letter = encrypt_letter(letter)
    end

    results.join
  end

  def decrypt_letter(letter)
    lowercase_letter = letter.downcase
    cipher.key(lowercase_letter)
  end

  def decrypt(string)
    letters = string.split("")

    results = letters.collect { |letter| decrypted_letters = decrypt_letter(letter) }

    results.join
  end

end
