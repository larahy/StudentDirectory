
# The body of our script is a method called 'print' with the argument 'names'.  The .each command takes each of the 'names' values and puts them to the screen. 
# def printing(students)
#   students.each_with_index do |student, index|
#     print "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)\n"
#     # print index, ":"
#   end 
#   # students.each do |x|
#   # end
# end 

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice\n"
  # Create an empty array
  @students = []
  # Get the first name
  name = gets.chomp

  # while name is not empty repeat this process
  while !name.empty? do
    # Add the student hash to the array
    @students << {:name => name, :cohort => :November}
    print "Now we have #{@students.length} students\n"
    # Get another name from the user
    name = gets.chomp
  end

end

def short_names(students)
  students.each do |student|
    if student[:name].length < 12
      puts "#{student[:name]} (#{student[:cohort]} cohort"
    end 
  end
end

# def A_names(students)
#   students.select do |student|
#     if student[:name][0] == "a"
#       puts "#{student[:name]} (#{student[:cohort]} cohort"
#     end 
#   end
# end

# This is a method called print header which includes the text that heads up our script
def print_header
  print "The Students of my cohort at Makers Academy\n"
  print "-------------------------------------------\n"
end 


# The footer of our script is a method called 'print_footer' with the argument 'names'
def print_footer(names)
  print "Overall we have #{names.length} great students.\n"
end 

# Here we assign students as the variable for the argument 'names' in both cases. Students is the array we created at the beginning.
students = input_students
print_header
short_names(@students)
print_footer(@students)




















