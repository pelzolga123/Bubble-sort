def bubble_sort(arr)
  swapped = true

  while swapped
    swapped = false

    (0...arr.size - 1).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
  end

  arr
end

p bubble_sort([4,3,78,2,0,2])
