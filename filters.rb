# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code Here
  found = false
  individual_candidate = nil
  @candidates.each do |candidate|
    if id == candidate[:id]
      #puts "Found input id #{id} match #{candidate[:id]}"
      individual_candidate = candidate
      #puts individual_candidate
      found = true
      #puts "value of found #{found}"
    end
    break if found == true
  end
  individual_candidate
end

def experienced?(candidate)
  # Your code Here note that ? returns a boolean
  candidate [:years_of_experience] > 2
end

def git_points?(candidate)
  candidate [:github_points] > 100
end 

def know_ruby_python?(candidate)
  #puts "Candidate Languages:  #{candidate[:languages]}"
  (candidate[:languages] & ['Ruby', 'Python']).present?
end 

def last_applied?(candidate)
  #  puts "#{Time.now.to_date}"
  #  puts "#{candidate[:date_applied]}"
  #  puts " #{Time.now.to_date - candidate[:date_applied]}"
   (Time.now.to_date - candidate[:date_applied]).to_i <= 15
end

def min_age?(candidate)
  candidate [:age] > 17
end  

def qualified_candidates(candidates)
  individual_candidate = []
  candidates.each do |candidate|
    if (experienced? candidate) && (git_points? candidate) && (know_ruby_python? candidate) && (last_applied? candidate) && (min_age? candidate)
     puts "testing if true #{candidate[:id]}"
     individual_candidate.push candidate
    end
  end
  individual_candidate
end

# More methods will go below

def ordered_by_qualifications(candidates)
  candidates.sort_by do |candidate|
    [-candidate[:years_of_experience], -candidate[:github_points]]
  end


end


def test(candidate)
  # person = {:age 60, name: 'jack'}
  # person[:age]
  #puts 'test'
  @candidates.each do |checkeach|
     check_id = checkeach[:id]
     puts "Candidate: #{check_id}"
     puts "input value: #{candidate}"
     if check_id == candidate
        puts "found candidate - #{checkeach[:years_of_experience]}"
     end
     
  end  

end