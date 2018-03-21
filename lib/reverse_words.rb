# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return my_words if my_words.nil?

  left = 0

  while left < my_words.length
    right = left

    until my_words[right] == " " || right == my_words.length
      right += 1
    end

    reverse(my_words, left, (right - 1))
    left = right + 1
  end
end

def reverse(my_words, first, last)
  while first < last
    temp = my_words[first]
    my_words[first] = my_words[last]
    my_words[last] = temp
    first += 1
    last -= 1
  end
end
