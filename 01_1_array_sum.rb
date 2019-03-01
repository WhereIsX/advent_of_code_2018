
def sum(nums_w_o_commas)
  sum = 0
  %w{nums_w_o_commas}.each {|num| sum += el.to_i}
  puts sum
  return sum
end
