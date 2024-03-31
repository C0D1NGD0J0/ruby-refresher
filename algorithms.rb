require 'pry';

# 1. Caesar Cipher
def caesar_cipher(word, shift)
  uppercase = ('A'..'Z').to_a
  lowercase = ('a'..'z').to_a

  secret_msg = word.chars.map do |char|
    if uppercase.include?(char)
      shifted_char = uppercase[(uppercase.index(char) + shift) % 26]
    elsif lowercase.include?(char)
      shifted_char = lowercase[(lowercase.index(char) + shift) % 26]
    else
      char
    end
  end

  secret_msg.join
end
# p caesar_cipher('password', 5)

# 2. Substrings
def substrings(word, dictionary)
  result = Hash.new(0)
  normalized_text = word.downcase
  dictionary.map do |t|
    occurrances = normalized_text.scan(t.downcase).count
    result[t] += occurrances if occurrances > 0
  end
  result
end
# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("below", dictionary)


#3. Bubble sort
def bubble_sort(array)
  return array if array.length <= 1

  loop do
    swapped = false
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]  # Swap elements
        swapped = true
      end
    end

    break unless swapped  # Exit the loop if no swaps occurred
  end

  array
end
# p bubble_sort([4,3,78,2,0,2])

#4. Insertion sort
def insertion_sort(arrData)
  return arrData if arrData.length <= 1

  (1...arrData.length).each do |idx|
    current_value = arrData[idx]
    position = idx - 1

    while position >= 0 && arrData[position] > current_value
      arrData[position + 1] = arrData[position]
      position -= 1
    end

    # Insert the current element into its correct position
    arrData[position + 1] = current_value
  end

  arrData
end
# sorted_array = insertion_sort([4, 3, 78, 2, 0, 2])
# puts sorted_array
