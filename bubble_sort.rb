# frozen_string_literal: true

def bubble_sort(arr)
  sorted = false
  unsorted_length = arr.size

  until sorted
    sorted = true
    unsorted_length -= 1

    unsorted_length.times do |i|
      next if arr[i] < arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      sorted = false
    end
  end
  arr
end

def bubble_sort_by(arr)
  sorted = false
  unsorted_length = arr.size

  until sorted
    sorted = true
    unsorted_length -= 1

    unsorted_length.times do |i|
      result = yield([arr[i], arr[i + 1]])
      next if result.negative?
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      sorted = false
    end
  end
  arr
end

result = bubble_sort([4, 3, 78, 2, 0, 2])
p result

result = bubble_sort_by(%w[hi hello hey howyadoin yo howdy]) do |left, right|
  left.length - right.length
end

p result
