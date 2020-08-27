require 'pry'

def bubble_sort(array_to_sort)
  array_to_sort = Array.new(array_to_sort)
  for i in 0...array_to_sort.length
    for j in i...array_to_sort.length
      # binding.pry
      if array_to_sort[i] > array_to_sort[j]
        array_to_sort[i], array_to_sort[j] = array_to_sort[j], array_to_sort[i]
      end 
    end 
  end 
  return array_to_sort
end 

p bubble_sort([10,9,8,7,6,5,4,3,2,1,0])