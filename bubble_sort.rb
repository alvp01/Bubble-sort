def bubble_sort(arr)
  sorted = false
  until sorted
    sorted = true
    arr.each_with_index do |var, ind|
      if ind + 1 < arr.length && var > arr[ind + 1]
        arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind]
        sorted = false
      end
    end
  end
  p arr
end

def bubble_sort_by(arr)
  sorted = false
  until sorted
    sorted = true
    arr.each_with_index do |_var, ind|
      if ind + 1 < arr.length && yield(arr[ind], arr[ind + 1]).positive?
        arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind]
        sorted = false
      end
    end
  end
  p arr
end

bubble_sort([1, 5, 4, 6, 2, 2, 2, 4, 8, -1, -2])

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
