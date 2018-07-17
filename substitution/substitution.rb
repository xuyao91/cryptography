class Substitution
  PLAIN_ALPHABET = [*('a'..'z')]
  CIPHER_ALPHABET = ['X', 'N', 'Y', 'A', 'H', 'P', 'O', 'G', 'Z', 'Q', 'W', 'B', 'T', 'S', 'F', 'L', 'R', 'C', 'V', 'M', 'U', 'E', 'K', 'J', 'D', 'I']

  def encoder message
    cipher = []
    message.split('').each do |m|
    	cipher << CIPHER_ALPHABET[PLAIN_ALPHABET.index(m)]
    end
    cipher.join		
  end
  
  def decoder cipher
    message = []
    cipher.split('').each do |m|
      message << PLAIN_ALPHABET[CIPHER_ALPHABET.index(m)]	
    end	
    message.join
  end

#   def self.frequency_analyze cipher
#     alphabet = [*('A'..'Z')]
#     data = alphabet.map{|a| [0, a]}
#     alphabet.each do |a|
#       cipher.split('').each do |m|
#         if a == m 
#           data.rassoc(a)[0] += 1  
#         end            
#       end  
#     end
#     puts "--------------------------"
#     puts " 密文中各字母出现的频率表 "
#     puts "--------------------------"
#     puts "|    字母    |    次数   |"
#     puts "--------------------------"
#     data.each do |arr|
#       puts "|     #{arr.last}      |     #{arr.first}     |"
#     end  

#     data_with_the, data_start_with_e, data_end_with_e = [], [], []
#     cipher.split('').each_with_index do |value, index|
#       if value == 'C'
#         if cipher[index - 1] != nil && cipher[index - 2] != nil
#           word = "#{cipher[index - 2]}#{cipher[index - 1]}e" 
#           data_with_the << word
#         end  
#         if cipher[index + 1] != nil
#           data_start_with_e << "e#{cipher[index + 1]}"
#         end 

#         if cipher[index - 1] != nil
#           data_end_with_e << "#{cipher[index - 1]}e"
#         end  
#       end  
#     end 
#     puts "--可能是the的字母--"
#     puts data_with_the 
#     puts "-----------------"
#     puts "--以e开头的字母--"
#     puts data_start_with_e
#     puts "--以e结尾的字母--"
#     puts data_end_with_e
#   end
    
# end	

