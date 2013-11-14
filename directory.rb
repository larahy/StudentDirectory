students = [
{:name => "Tom Groombridge", :cohort => :November},
{:name => "Hannah Knights", :cohort => :November},
{:name => "Georgi Georgiev", :cohort => :November},
{:name => "Me!", :cohort => :November},
{:name => "Tom Shacham", :cohort => :November},
{:name => "Kumy Veluppillai", :cohort =>:November},
{:name => "Jean-Baptiste Blanc", :cohort => :November},
{:name => "Nicky Keszler", :cohort => :November},
{:name => "James Graham", :cohort => :November},
{:name => "Bruce Steedman", :cohort => :November},
{:name => "Michael Fisher", :cohort => :November},
{:name => "Peter Kristo", :cohort => :November},
{:name => "Jeremy Marer", :cohort => :November},
{:name => "Giacomo Patella", :cohort => :November},
{:name => "Gianni Guitteaud", :cohort => :November},
{:name => "Asta Bevainyte", :cohort => :November},
{:name => "Erica Salvaneschi", :cohort => :November},
{:name => "Nisar Tahir", :cohort => :November},
{:name => "Anath Abensour", :cohort => :November},
{:name => "Simon Woolf", :cohort => :November},
{:name => "James Brooke", :cohort => :November},
{:name => "Ken Scott", :cohort => :November}
]
# This is a method called print header which includes the text that heads up our script
def print_header
  print "The Students of my cohort at Makers Academy\n"
  print "-------------------------------------------\n"
end 

# The body of our script is a method called 'print' with the argument 'names'.  The .each command takes each of the 'names' values and puts them to the screen. 
def printing(students)
  students.each_with_index do |student, index|
    print "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)\n"
    # print index, ":"
  end 
  # students.each do |x|
  # end
end 

# The footer of our script is a method called 'print_footer' with the argument 'names'
def print_footer(names)
  print "Overall we have #{names.length} great students.\n"
end 


def input_students
  print "Please enter the names of the students\n"
  print "To finish, just hit return twice\n"
  # Create an empty array
  students = []
  # Get the first name
  name = gets.chomp

  # while name is not empty repeat this process
  while !name.empty? do
    # Add the student hash to the array
    students << {:name => name, :cohort => :November}
    print "Now we have #{students.length} students\n"
    # Get another name from the user
    name = gets.chomp
  end

  #Return array of students
  students 
end

# Here we assign students as the variable for the argument 'names' in both cases. Students is the array we created at the beginning.
students = input_students
print_header
printing(students)
print_footer(students)



















