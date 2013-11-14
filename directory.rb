students = [
"Tom Groombridge",
"Hannah Knights",
"Georgi Georgiev",
"Me!",
"Tom Shacham",
"Kumy Veluppillai",
"Jean-Baptiste Blanc",
"Nicky Keszler",
"James Graham",
"Bruce Steedman",
"Michael Fisher",
"Peter Kristo",
"Jeremy Marer",
"Giacomo Patella",
"Gianni Guitteaud",
"Asta Bevainyte",
"Erica Salvaneschi",
"Nisar Tahir",
"Anath abensour",
"Simon Woolf",
"James Brooke",
"Ken Scott"
]
# This is a method called print header which includes the text that heads up our script
def print_header
  puts "The Students of my cohort at Makers Academy"
  puts "-------------------------------------------"
end 

# The body of our script is a method called 'print' with the argument 'names'.  The .each command takes each of the 'names' values and puts them to the screen. 
def print(names)
  names.each do |x|
    puts x
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

