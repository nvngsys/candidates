# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

# I am using for testing only - remove later
#test(5)

# this is being used to test experienced?
# note this is send the object of each  id  to method for testing

# Task 2
# @candidates.each do |candidate|
#     puts experienced?(candidate)
# end

# Task 3
#puts find(15)

# Task 4
#puts qualified_candidates(@candidates)

# Task 5
puts ordered_by_qualifications(@candidates)

#binding.pry

#pp @candidates
