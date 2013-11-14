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
{:name => "Anath abensour", :cohort => :November},
{:name => "Simon Woolf", :cohort => :November},
{:name => "James Brooke", :cohort => :November},
{:name => "Ken Scott", :cohort => :November}
]
# This is a method called print header which includes the text that heads up our script
def print_header
  puts "The Students of my cohort at Makers Academy"
  puts "-------------------------------------------"
end 

# The body of our script is a method called 'print' with the argument 'names'.  The .each command takes each of the 'names' values and puts them to the screen. 
def print(students)
  students.each do |x|
    puts "#{x[:name]} (#{x[:cohort]} cohort)"
  end
end 

# The footer of our script is a method called 'print_footer' with the argument 'names'
def print_footer(names)
  puts "Overall we have #{names.length} great students."
end 

# Here we assign students as the variable for the argument 'names' in both cases. Students is the array we created at the beginning.
print_header
print(students)
print_footer(students)

