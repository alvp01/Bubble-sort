def bubble_sort(arr)
  sorted = false
    while !sorted do
      sorted = true
      arr.each_with_index do |var,ind|
        if (ind+1 < arr.length && var > arr[ind+1])
          arr[ind], arr[ind+1] = arr[ind+1], arr[ind]
          sorted = false
        end
      end
    end
    p arr
end

bubble_sort([1,5,4,6,2,2,2,4,8,-1,-2])
