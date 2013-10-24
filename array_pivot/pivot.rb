def pivot(array)

  running_sum = 0
  sum = array.reduce(:+)

  array.each_with_index do |value, index|
    sum -= value
    if (sum - running_sum) == 0
      return index
    end
    running_sum += value
  end

  -1
end
