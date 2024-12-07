# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length == 1

  length = arr.length
  middle = length / 2
  puts "Splitting #{arr} into #{arr[...middle]} and #{arr[middle..]}"
  arr_l = merge_sort(arr[...middle])
  arr_r = merge_sort(arr[middle..])
  puts "Sorted as #{arr_l} and #{arr_r}"
  l_ptr = 0
  r_ptr = 0
  new_arr = []
  while !arr_l[l_ptr].nil? || !arr_r[r_ptr].nil?
    if arr_l[l_ptr].nil?
      until arr_r[r_ptr].nil?
        new_arr << arr_r[r_ptr]
        r_ptr += 1
      end
      return new_arr
    elsif arr_r[r_ptr].nil?
      until arr_l[l_ptr].nil?
        new_arr << arr_l[l_ptr]
        l_ptr += 1
      end
      return new_arr
    elsif arr_l[l_ptr] < arr_r[r_ptr]
      new_arr << arr_l[l_ptr]
      l_ptr += 1
    else
      new_arr << arr_r[r_ptr]
      r_ptr += 1
    end
  end
  new_arr
end
