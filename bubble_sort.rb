def bubble_sort(array)
  arr = array.dup
  n = arr.length
  loop do
    swapped = false
    (0...n-1).each do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    break unless swapped
    n -= 1
  end
  arr
end
puts bubble_sort([4, 3, 78, 2, 0, 2]).inspect