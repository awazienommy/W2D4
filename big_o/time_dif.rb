#Phase 1

# Question: First, write a function that compares each element to every other element of the list. 
# Return the element if all other elements in the array are larger.


# # def my_min(arr)
#   min = arr.first
#   arr.each_with_index do |ele, idx1|
#     (idx1+1..arr.length-1).each do |idx2|
#       if arr[idx1] < arr[idx2] && arr[idx1] < min
#         min = arr[idx1]
#       elsif arr[idx2] < min
#         min = arr[idx2] 
#       end
#     end
#   end

#   min
# end

# Time: O(n^2)

#Phase 2

# Question: Now rewrite the function to iterate through the list just once while 
# keeping track of the minimum. What is the time complexity?

# def my_min2(arr)
#   min = arr.first
#   arr.each_with_index do |ele, idx1|
#       if arr[idx1] < min
#         min = ele
#       end
#   end

#   min
# end

#Time: o(n)


# Largest Contiguous Sub-sum
# You have an array of integers and you want to find the largest 
# contiguous (together in sequence) sub-sum. Find the sums of all 
# contiguous sub-arrays and return the max.

# Phase 1

# def largest_sum1(arr)
#   arr_subs = []
#   arr.each_with_index do |ele, idx1| #=n
#     (idx1..arr.length-1).each do |idx2| #=n
#       sub_arr_sum = arr[idx1..idx2].sum #=1 is this an n or a 1?
#       arr_subs << sub_arr_sum
#     end
#   end
#   arr_subs.max
# end

# Phase 2

def largest_sum2(arr)
  curr_sum = 0
  curr_best = arr.first
  
  arr.each do |ele|
    curr_sum += ele
    if curr_sum > curr_best
      curr_best = curr_sum
    end

    if curr_sum < 0
      curr_sum = 0
    end
  end
  curr_best
end




