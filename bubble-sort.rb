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

def bubble_sort_by(arr)

    (0...arr.size - 1).each do |i|
        if yield(arr[i],arr[i+1]) > 0
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
        end   
    end
   p arr
end

p bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","hey"]) do |left,right|
 left.length - right.length
end 