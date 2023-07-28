def merge_sort(arr)
  return arr if arr.length == 1

  # splits the array into halves
  # left_half is smaller if there are a odd numbers of elements
  left_half = merge_sort(arr.slice(0..(arr.length / 2) - 1))
  right_half = merge_sort(arr.slice((arr.length / 2)..-1))

  # merge the sorted arrays
  merge(left_half, right_half)
end

def merge(left, right, sorted_arr = [])
  # loop until both left and right arrays are empty
  until left.empty? && right.empty?
    # if the left array is empty, the right array will be added to the sorted array. Vice versa for if the right array is empty
    if left.empty?
      return sorted_arr + right
    elsif right.empty?
      return sorted_arr + left
    else
      # compares the first element of each array and pushes them into the sorted_arr
      left[0] < right[0] ? sorted_arr << left.shift : sorted_arr << right.shift
    end
  end
  sorted_arr
end

my_arr = []

rand(50).times do
  my_arr << rand(100)
end 

p merge_sort(my_arr)
