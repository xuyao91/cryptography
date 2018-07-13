class Caesar
  attr_reader :key	
  PLAIN_ALPHABET = [*('a'..'z')]
  CIPHER_ALPHABET = [*('A'..'Z')]

  def initialize key
    @key = key
  end	

  def encoder message
    cipher = []
    message.split('').each do |m|
    	cipher << CIPHER_ALPHABET[(PLAIN_ALPHABET.index(m) + @key)%26]
    end
    cipher.join		
  end
  
  def decoder cipher
    message = []
    cipher.split('').each do |m|
      message << PLAIN_ALPHABET[(CIPHER_ALPHABET.index(m) - @key)%26]	
    end	
    message.join
  end

  def self.dict_attack cipher
    26.times do |key|
      message = []
      cipher.split('').each do |m|
        message << PLAIN_ALPHABET[(CIPHER_ALPHABET.index(m) - key)%26]	
      end	
      puts "#{cipher} -> 第#{key}次破解 -> #{message.join}"	
    end	
  end	

end	
