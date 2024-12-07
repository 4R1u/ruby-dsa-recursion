# frozen_string_literal: true

def fibs(num)
  array = Array.new(3, 1)
  array[0] = 0
  (num - 3).times do |n|
    array << array[n] + array[n + 1]
  end
  array
end
