# Return values

# Suppose we want to do some data analysis.
# Eventually, I want to print the STANDARD DEVIATION of a set of numbers.
# In other words, if I have a set of numbers like this:

#     first_dataset = [93, 65, 87, 68, 2, 64, 36, 96, 45, 47]

# Then I want to be able to do something like this:

#     stdev1 = standard_deviation(first_dataset)

# And have it work.

# In order to find the STANDARD DEVIATIONS of sets of numbers, we have
# to be able to find VARIANCES. In order to find VARIANCES, we have to be
# able to find SUMS and MEANS.

# So, let us first define some tools that will be helpful in taking the
# intermediate steps:

# SUM
# ===
# To find the sum of a set of numbers,
#  - we start with 0
#  - for each number in the set,
#   - we add it to the running total
#  - after we've looked at every number, the running total is the sum

def sum(list_of_numbers)
  running_total = 0
  list_of_numbers.each do |number|
    running_total = running_total + number
  end

  return running_total
end

# MEAN
# ====
# To find the mean of a set,
#  - we sum up all the elements
#  - then we divide the sum by the number of elements in the set

def mean(list_of_numbers)
  suma=0
  suma = sum(list_of_numbers)
  media = suma/list_of_numbers.size
 return media

end

# VARIANCE
# ========
# To find the variance of a set,
#  - we find the mean of the set
#  - for each number in the set,
#    we find the difference between the number and the mean
#   - we square the difference
#  - the variance is the mean of the squared differences

def variance(list_of_numbers)
  mean = mean(list_of_numbers)
  temp = 0
  i = 0
  num = list_of_numbers.size
  aux=0
  varianza = 0

  begin
    temp = list_of_numbers[i]
    #puts("Inside the loop i = #{i}")
    i +=1
    aux = aux + (temp - mean)**2

  end while i < num

   variance = aux/list_of_numbers.size
   return variance

end

# STANDARD DEVIATION
# ==================
# To find the standard deviation of a set,
#  - take the square root of the variance

def standard_deviation(list_of_numbers)

  aux = variance(list_of_numbers)
  standard_deviation = Math.sqrt(aux)

return standard_deviation
end

puts " "
puts "++++++++++++++++++++++++++++++++++++++++++"
puts "Finally, everything above allows us to do:"
puts "++++++++++++++++++++++++++++++++++++++++++"
puts " "
first_dataset = [93, 65, 87, 68, 2, 64, 36, 96, 45, 47]
stdev1 = standard_deviation(first_dataset)
puts "The standard deviation of the first dataset #{first_dataset} is #{stdev1.round(2)}."
puts " "
second_dataset = [2, 9, 405, 562, 740, 133, 346, 509, 21, 93]
stdev2 = standard_deviation(second_dataset)
puts "The standard deviation of the second dataset #{second_dataset} is #{stdev2.round(2)}."
