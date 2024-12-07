# frozen_string_literal: true

def fibs(num)
  num = num.abs
  array = [0, 1]
  (num - 2).times { |n| array << array[n] + array[n + 1] }
  array[0...num]
end

def fibs_rec(num)
  num = num.abs
  return [0, 1, 1][0...num] if num <= 2

  array = fibs_rec(num - 1)
  array << array[-1] + array[-2]
end
