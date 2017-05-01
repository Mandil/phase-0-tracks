def fib(integer)
  arr = [0, 1]
  loop = integer - arr.length 
  while loop > 0 
  arr << arr[arr.length-1] + arr[arr.length-2]
  loop -= 1 
end 
  arr 
end


fib(100)