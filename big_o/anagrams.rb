#Phase 1
# Write a method #first_anagram? that will generate and store all the possible 
# anagrams of the first string. Check if the second string is one of these.

def first_anagrams?(str, target)
  array = str.split("")

  potential_anagrams = permutations(array)
  potential_anagrams.any? { |anagram_arrays| target == anagram_arrays.join("")}
  
end

def permutations(array)
  return [array] if array.length <= 1

  # pop off the last element
  first = array.shift
  # make the recursive call
  perms = permutations(array)
  # we will need an array to store all our different permutations
  total_permutations = []


  perms.each do |perm|
    (0..perm.length).each do |i|
      total_permutations << perm[0...i] + [first] + perm[i..-1]
    end
  end
  total_permutations
end

# O(n!)


#Phase2


def second_anagram?(str1, str2)
  arr1 = str1.split("")
  arr2 = str2.split("")
  
   while arr2.length > 0
    if arr1.find_index(arr2.first).nil?
      
      return false
    else
      arr2.shift
    end
  end

  return true
end

# O(n)



#Phase 3

def third_anagram?(str1, str2)
  str1.split("").sort == str2.split("").sort
end

# O(n log n)


#Phase4


def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.each_char do |char|
    hash1[char] += 1
  end

  str2.each_char do |char|
    hash2[char] += 1
  end

  hash1 == hash2

end

#Phase Bonus

def bonus_anagram?(str1, str2)
  hash1 = Hash.new(0)

  str1.each_char do |char|
    hash1[char] += 1
  end

  hash1.any? {|k,v| v != str2.count(k)}
  
end