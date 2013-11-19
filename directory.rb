# # Define what to include in the header
# def print_header
#   print "The students on my cohort at Makers Accademy are:\n"
#   print "-------------------------\n\n"
# end

# # Method to print all students in the array followed by their cohort onto the screen
# def print_students(students)
#   students.each do |student|
#     print "#{student[:name]} is from the #{student[:cohort]}cohort.\n"
#   end
# end

# # Method to print all students in the array preceded by an index to the screen
# def print_students_index(students)
#   students.each_with_index() do |student, index| #The method each_with_index requires two parameters within the pipes
#     print "#{index + 1} #{student[:name]} from the #{student[:cohort]} cohort.\n" # The index always starts at 0, so to read sensibly we must start with index +1
#   end
# end

# #Method for printing only students whose name begins with the letter A
# def print_A_names(students)
#   students.select do |student|
#     if student[:name][0] == "a" #we chose the key we are filtering :name, then we chose the index of the letter we are filtering (0) to equal 'a'
#       puts "#{student[:name]} (#{student[:cohort]} cohort)"
#     end 
#   end
# end

# #Method for printing only students whose names are a certain length
# def filter_by_length(students)
#   students.each do |student|
#     if student[:name].length < 12 #we chose the key we are filtering :name and then call the method.length on this to make sure it is < 12
#       print "#{student[:name]} from the #{student[:cohort]} cohort.\n"
#     else
#       print "Sorry, if you are not listed here it is because you are a bit of a mouthful\n"
#     end
#   end
# end

# # Define what to include in the footer
# def print_footer(name)
#   print "There are #{name.length} students on the course.\n"
# end

# Methods for collecting inputs
def get_first_name
  print "Please can you enter your first name?\n"
  gets.chomp
end

def get_last_name
  print "Please can you enter your last name?\n"
  gets.chomp
end

def get_cohort
  print "Please enter your cohort?\n"
  gets.chomp
end

def input_students
  student_array = []
  print "return twice when you don't have any more data to enter.\n"
    first_name = get_first_name
  while !first_name.empty? do
    # check here
    last_name = get_last_name
    cohort = get_cohort
    student_array << {:first_name => first_name, :last_name => last_name, :cohort => cohort}
    first_name = get_first_name
  end
  return student_array
end


def list_inputs(something)
  something.each do |student_array|
  puts "#{student_array[:first_name]} #{student_array[:last_name]}is from the #{student_array[:cohort]}cohort."
  end
end

student_array = input_students
list_inputs(student_array)
#print_students(students)
#print_students_index(students)
#print_A_names(students)
#filter_by_length(students)
# print_footer(student_array)




















