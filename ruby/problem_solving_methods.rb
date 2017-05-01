def fib(integer)
  arr = [0, 1]
  loop = integer - arr.length 
  while loop > 0 
  arr << arr[arr.length-1] + arr[arr.length-2]
  loop -= 1 
end 
  arr 
end


p fib(100)


def bubble_sort(arr)
  swapped = true 
  until swapped == false 
    swapped = false 
    index = 1 
    swap = 0 
    while arr.length > index 
      if arr[index-1] > arr[index]
        swap = arr[index] 
        arr[index] = arr[index-1]
        arr[index-1] = swap
        swapped = true 
      end
      index += 1 
    end
  end
  arr
end
arr = [1, 5, 4, 2, 8, 3, 16, 44, 0, -1]
p bubble_sort(arr)