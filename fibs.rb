# frozen_string_literal: true

def fibs(num)
  num = num.abs
  array = [0, 1]
  (num - 2).times { |n| array << array[n] + array[n + 1] }
  array[0...num]
end
