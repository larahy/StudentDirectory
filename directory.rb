
puts "Students in my cohort (November) are listed below:"

# Changing student into an array

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

students.each do |x|
  puts x
end 

# Now, we print the total, print is used to ensure no new line is inserted
puts "Overall we have #{students.length} great students." 
