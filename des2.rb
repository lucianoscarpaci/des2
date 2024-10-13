PC1 = [
    57, 49, 41, 33, 25, 17, 9,
    1, 58, 50, 42, 34, 26, 18,
    10, 2, 59, 51, 43, 35, 27,
    19, 11, 3, 60, 52, 44, 36,
    63, 55, 47, 39, 31, 23, 15,
    7, 62, 54, 46, 38, 30, 22,
    14, 6, 61, 53, 45, 37, 29,
    21, 13, 5, 28, 20, 12, 4
]

PC2 = [
    14, 17, 11, 24, 1, 5, 3, 28,
    15, 6, 21, 10, 23, 19, 12, 4,
    26, 8, 16, 7, 27, 20, 13, 2,
    41, 52, 31, 37, 47, 55, 30, 40,
    51, 45, 33, 48, 44, 49, 39, 56,
    34, 53, 46, 42, 50, 36, 29, 32
]

SHIFT = [1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1]

IP = [
    58, 50, 42, 34, 26, 18, 10, 2,
    60, 52, 44, 36, 28, 20, 12, 4,
    62, 54, 46, 38, 30, 22, 14, 6,
    64, 56, 48, 40, 32, 24, 16, 8,
    57, 49, 41, 33, 25, 17, 9, 1,
    59, 51, 43, 35, 27, 19, 11, 3,
    61, 53, 45, 37, 29, 21, 13, 5,
    63, 55, 47, 39, 31, 23, 15, 7
]

EXPANDTABLE = [
    32, 1, 2, 3, 4, 5,
    4, 5, 6, 7, 8, 9,
    8, 9, 10, 11, 12, 13,
    12, 13, 14, 15, 16, 17,
    16, 17, 18, 19, 20, 21,
    20, 21, 22, 23, 24, 25,
    24, 25, 26, 27, 28, 29,
    28, 29, 30, 31, 32, 1
]

EACHROUNDTABLE = [
    16, 7, 20, 21, 29, 12, 28, 17,
    1, 15, 23, 26, 5, 18, 31, 10,
    2, 8, 24, 14, 32, 27, 3, 9,
    19, 13, 30, 6, 22, 11, 4, 25
]

FP = [
    40, 8, 48, 16, 56, 24, 64, 32,
    39, 7, 47, 15, 55, 23, 63, 31,
    38, 6, 46, 14, 54, 22, 62, 30,
    37, 5, 45, 13, 53, 21, 61, 29,
    36, 4, 44, 12, 52, 20, 60, 28,
    35, 3, 43, 11, 51, 19, 59, 27,
    34, 2, 42, 10, 50, 18, 58, 26,
    33, 1, 41, 9, 49, 17, 57, 25
]

SBOX = [
  # S1
  [
    [14, 4, 13, 1, 2, 15, 11, 8, 3, 10, 6, 12, 5, 9, 0, 7],
    [0, 15, 7, 4, 14, 2, 13, 1, 10, 6, 12, 11, 9, 5, 3, 8],
    [4, 1, 14, 8, 13, 6, 2, 11, 15, 12, 9, 7, 3, 10, 5, 0],
    [15, 12, 8, 2, 4, 9, 1, 7, 5, 11, 3, 14, 10, 0, 6, 13]
  ],
  # S2
  [
    [15, 1, 8, 14, 6, 11, 3, 4, 9, 7, 2, 13, 12, 0, 5, 10],
    [3, 13, 4, 7, 15, 2, 8, 14, 12, 0, 1, 10, 6, 9, 11, 5],
    [0, 14, 7, 11, 10, 4, 13, 1, 5, 8, 12, 6, 9, 3, 2, 15],
    [13, 8, 10, 1, 3, 15, 4, 2, 11, 6, 7, 12, 0, 5, 14, 9]
  ],
  # S3
  [
    [10, 0, 9, 14, 6, 3, 15, 5, 1, 13, 12, 7, 11, 4, 2, 8],
    [13, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, 14, 12, 11, 15, 1],
    [13, 6, 4, 9, 8, 15, 3, 0, 11, 1, 2, 12, 5, 10, 14, 7],
    [1, 10, 13, 0, 6, 9, 8, 7, 4, 15, 14, 3, 11, 5, 2, 12]
  ],
  # S4
  [
    [7, 13, 14, 3, 0, 6, 9, 10, 1, 2, 8, 5, 11, 12, 4, 15],
    [13, 8, 11, 5, 6, 15, 0, 3, 4, 7, 2, 12, 1, 10, 14, 9],
    [10, 6, 9, 0, 12, 11, 7, 13, 15, 1, 3, 14, 5, 2, 8, 4],
    [3, 15, 0, 6, 10, 1, 13, 8, 9, 4, 5, 11, 12, 7, 2, 14]
  ],
  # S5
  [
    [2, 12, 4, 1, 7, 10, 11, 6, 8, 5, 3, 15, 13, 0, 14, 9],
    [14, 11, 2, 12, 4, 7, 13, 1, 5, 0, 15, 10, 3, 9, 8, 6],
    [4, 2, 1, 11, 10, 13, 7, 8, 15, 9, 12, 5, 6, 3, 0, 14],
    [11, 8, 12, 7, 1, 14, 2, 13, 6, 15, 0, 9, 10, 4, 5, 3]
  ],
  # S6
  [
    [12, 1, 10, 15, 9, 2, 6, 8, 0, 13, 3, 4, 14, 7, 5, 11],
    [10, 15, 4, 2, 7, 12, 9, 5, 6, 1, 13, 14, 0, 11, 3, 8],
    [9, 14, 15, 5, 2, 8, 12, 3, 7, 0, 4, 10, 1, 13, 11, 6],
    [4, 3, 2, 12, 9, 5, 15, 10, 11, 14, 1, 7, 6, 0, 8, 13]
  ],
  # S7
  [
    [4, 11, 2, 14, 15, 0, 8, 13, 3, 12, 9, 7, 5, 10, 6, 1],
    [13, 0, 11, 7, 4, 9, 1, 10, 14, 3, 5, 12, 2, 15, 8, 6],
    [1, 4, 11, 13, 12, 3, 7, 14, 10, 15, 6, 8, 0, 5, 9, 2],
    [6, 11, 13, 8, 1, 4, 10, 7, 9, 5, 0, 15, 14, 2, 3, 12]
  ],
  # S8
  [
    [13, 2, 8, 4, 6, 15, 11, 1, 10, 9, 3, 14, 5, 0, 12, 7],
    [1, 15, 13, 8, 10, 3, 7, 4, 12, 5, 6, 11, 0, 14, 9, 2],
    [7, 11, 4, 1, 9, 12, 14, 2, 0, 6, 10, 13, 15, 3, 5, 8],
    [2, 1, 14, 7, 4, 10, 8, 13, 15, 12, 9, 0, 3, 5, 6, 11]
  ]
]

MAX_ATTEMPTS = 5
BUFFER_LENGTH = 100
# New Start of program
class DESCrypto

  def main()
    attempts = MAX_ATTEMPTS
    
    loop do
      # take user input
      puts "Enter the english plaintext to be encrypted (no capital letters): "
      plaintext = gets.chomp.strip

      puts "Enter the english key of 8 characters (no 0, 1, or capital letters): "
      key = gets.chomp.strip

      plaintext_valid = plaintext.match?(/\A[A-Za-z\s]+\z/) && (plaintext.length <= BUFFER_LENGTH)
      key_valid = key.match?(/^[^01A-Z]*$/) && key.length == 8
      
      if key_valid && plaintext_valid
         check_padding_required = true
         #check_padding_required = (plaintext.length % 8 != 0)
         # Encryption
         ciphertext = DES_encryption(key, plaintext, check_padding_required)
         # Decryption
         plaintext = DES_decryption(key, ciphertext, check_padding_required)
         # print ciphertext, plaintext
         puts "Encrypted ciphertext is : #{ciphertext}"
         puts "Decrypted plaintext is : #{plaintext}"
        break
      else
        attempts -= 1
        puts "Error. Please enter a valid key or plaintext. You have #{attempts} attempts left."
        if attempts == 0
          puts "No more attempts left. Exiting."
          break
        end
      end 
    end
  end

  def add_padding(text)
    # Determine padding length
    padding_length = 8 - (text.length % 8)
    # Add padding_length number of chr(padding_length) to text
    text += padding_length.chr * padding_length

    # Return text
    return text
  end

  def stringToBitArray(text)
    bitArray = []
    text.each_char do |letter|
      binVal = letter.ord.to_s(2).rjust(8, '0')
      # list of bits
      binValArr = binVal.chars.map(&:to_i)
      bitArray += binValArr
    end
    bitArray
  end

  def bin_value(val, bit_size)
    bin_val = if val.is_a?(Integer)
                val.to_s(2)
              else 
                val.ord.to_s(2)
              end
    # right-justify padding with 0s
    bin_val = bin_val.rjust(bit_size, '0')

    bin_val
  end

  def generate_subkeys(key)

    keys = []
    key = stringToBitArray(key)
    # PC1 is not defined yet
    key = permutation(key, PC1)
    # splitting the key into left and right blocks
    left_block, right_block = n_split(key, 28)
    # for i in range of 16
    16.times do |i|
      left_block, right_block = left_shift(left_block, right_block, SHIFT[i])
      temp = left_block + right_block
      keys << permutation(temp, PC2)
    end
    keys
  end

  def permutation(array, table)
    # Function to do permutation on the array using table
    table.map { |element| array[element - 1] }
  end

  def n_split(list, n)
    # Function to split a list into chunks of size n
    if list.is_a?(Array)
      list.each_slice(n).to_a
    elsif list.is_a?(String)
      list.scan(/.{1,#{n}}/)
    else
      raise "Invalid type"
    end
  end

  def left_shift(list1, list2, n)
    # Function to left shift the arrays by n
    [list1[n..] + list1[..n-1], list2[n..] + list2[..n-1]]
  end

  def DES(data, key, padding, isEncryption)
   isDecryption = !isEncryption
   # use the generate_subkeys function to get the keys
   keys = generate_subkeys(key)
   # split the plaintext into 8 length chunks
   split_plaintext_chunks = n_split(data, 8) 
   result = []
   split_plaintext_chunks.each do |block|
    block = stringToBitArray(block)
    # do the initial permutation
    block = permutation(block, IP) 
    # splitting the block into left and right blocks
    left_block, right_block = n_split(block, 32)
    temp = nil
    # do 16 rounds of encryption
    16.times do |i|
      # expand the key to 48 bit key size
      expanded_right_block = expand(right_block, EXPANDTABLE)
      if isEncryption == true
        # start from the keys at the beginning
        temp = xor(keys[i], expanded_right_block)
      elsif isDecryption == true
        # start from the last key to the first key
        temp = xor(keys[15 - i], expanded_right_block)
      end
      # do the sbox substitution
      temp =  SboxSubstitution(temp)
      temp = permutation(temp, EACHROUNDTABLE)
      # XOR with left block
      temp = xor(left_block, temp)
      # swap the blocks
      left_block = right_block
      right_block = temp
    end
    # combine the left and right blocks
    result += permutation(right_block + left_block, FP)
    end
    final_result = bit_array_to_string(result)
    return final_result
  end

  def expand(array, table)
    # Function to expand the array using table
    table.map { |element| array[element - 1] }
  end

  def xor(list1, list2)
    # Function to return the XOR of two lists
    list1.zip(list2).map { |element1, element2| (element1 || 0) ^ (element2 || 0) }
    #list1.zip(list2).map { |element1, element2| element1 ^ element2 }
  end

  def SboxSubstitution(bitArray)
    # split the bitArray into 8 chunks of 6 bits
    blocks = n_split(bitArray, 6)
    result = []

   # For index to the range of length of blocks
    for i in 0...blocks.length
      block = blocks[i]
      # row number is the first and last bit
      row = (block[0].to_s + block[5].to_s).to_i(2)
      # column number is the middle 4 bits
      column = block[1..-2].map(&:to_s).join.to_i(2)
      # # Finish converting the bitArray into 4 blocks
      sboxVal = SBOX[i][row][column]
      # Converting to binary and adding to result
      binVal = bin_value(sboxVal, 4)
      result += binVal.chars.map(&:to_i)
    end
    result
  end

  def remove_padding(data)
    # Getting padding length
    padding_length = data[-1].ord

    # Returning data with removed padding
    data[0, data.length - padding_length]
  end

  def bit_array_to_string(array)
    # Chunking array of bits to 8-sized bytes
    byte_chunks = array.each_slice(8).to_a
    string_bytes_list = []
    # For each byte, convert to string and add to list
    byte_chunks.each do |byte|
      bits_list = byte.map(&:to_s)
      # Appending byte in string form to list
      string_bytes_list << bits_list.join('')
    end
    # Converting each stringByte to character and joining them to form string
    result = string_bytes_list.map { |string_byte| string_byte.to_i(2).chr }.join('')

    return result
  end

  def DES_encryption(key, data, padding)
    # add padding if padding is true
    data = add_padding(data) if padding

    ciphertext = DES(data, key, padding, true)

    ciphertext
  end

  def DES_decryption(key, data, padding)

    plaintext = DES(data, key, padding, false)
    # remove padding if padding is true
    plaintext = remove_padding(plaintext) if padding

    plaintext
  end
end

start = DESCrypto.new
start.main

























