def anagrams1(str, target)
  array = str.split("")

  potential_anagrams = permutations(array)

  potential_anagrams
end

def permutations(array)
  return [array] if array.length <= 1


  # pop off the last element
  first = array.shift
  # make the recursive call
  perms = permutations(array)
  # we will need an array to store all our different permutations
  total_permutations = []


  # and for each permutation add first into every index. This new subarray
  # gets added to total_permutations.
  perms.each do |perm|
    (0..perm.length).each do |i|
      total_permutations << perm[0...i] + [first] + perm[i..-1]
    end
  end
  total_permutations
end
