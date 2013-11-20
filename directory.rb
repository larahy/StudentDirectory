current_students = [
{:first_name => "Tom", :last_name => " Groombridge", :cohort => :November},
{:first_name => "Hannah", :last_name => " Knights", :cohort => :November},
{:first_name => "Georgi", :last_name => " Georgiev", :cohort => :November},
{:first_name => "Lara", :last_name => " Young", :cohort => :November},
{:first_name => "Tom", :last_name => " Shacham", :cohort => :November},
{:first_name => "Kumy", :last_name => " Veluppillai", :cohort =>:November},
{:first_name => "Jean-Baptiste", :last_name => " Blanc", :cohort => :November},
{:first_name => "Nicki", :last_name => " Keszler", :cohort => :November},
{:first_name => "James", :last_name => " Graham", :cohort => :November},
{:first_name => "Bruce", :last_name => " Steedman", :cohort => :November},
{:first_name => "Michael", :last_name => " Fisher", :cohort => :November},
{:first_name => "Peter", :last_name => " Kristo", :cohort => :November},
{:first_name => "Jeremy", :last_name => " Marer", :cohort => :November},
{:first_name => "Giacomo", :last_name => " Patella", :cohort => :November},
{:first_name => "Gianni", :last_name => " Guitteaud", :cohort => :November},
{:first_name => "Asta", :last_name => " Bevainyte", :cohort => :November},
{:first_name => "Erica", :last_name => " Salvaneschi", :cohort => :November},
{:first_name => "Nisar", :last_name => " Tahir", :cohort => :November},
{:first_name => "Anath", :last_name => " Abensour", :cohort => :November},
{:first_name => "Simon", :last_name => " Woolf", :cohort => :November},
{:first_name => "James", :last_name => " Brooke", :cohort => :November},
{:first_name => "Ken", :last_name => " Scott", :cohort => :November},
{:first_name => "Nadia", :last_name => " Odunayo", :cohort => :September},
] 

#Method sorts students alphabetically and prints to screen
def alphabetical_list(students)
  sorted_array = students.sort_by {|person| person[:last_name]}
  sorted_array.each do |student|
  puts "#{student[:first_name]} #{student[:last_name]} -- #{student[:cohort]}"
  end
end

#Method selects students from the November Cohort and prints to screen
def view_november(students) 
  students.select do |student|
    if student[:cohort] == :November
      puts "#{student[:first_name]} #{student[:last_name]} -- #{student[:cohort]}"
    end
  end
end

#Method selects students from the November Cohort and prints to screen
def view_september(students) 
  students.select do |student|
    if student[:cohort] == :september
      puts "#{student[:first_name]} #{student[:last_name]} -- #{student[:cohort]}"
    end
  end
end

def get_first_name
  print "Please enter the first name of the student you wish to add?\n"
  gets.chomp
end

def get_last_name
  print "Please enter the last name of the student you wish to add?\n"
  gets.chomp
end

def get_cohort
  print "Please enter the cohort of this student?\n"
  gets.chomp
end

def input_students(current_students)
    first_name = get_first_name
  if first_name != ''
    last_name = get_last_name
    cohort = get_cohort
    current_students << {:first_name => first_name, :last_name => last_name, :cohort => cohort}
  end
  puts current_students
end
#Method prints options to screen
def menu_options
  puts "Good morning, you have two options; you can either"
  puts "1. Add students to the directory\n or\n 2. View a list of students enrolled at Makers Academy"
end

def prompt_user_choice
  puts "Would you like to choose option 1, or option 2?\n> "
end

def implement_user_choice(user_choice, current_students)
  if user_choice == "1"
  input_students(current_students)
  elsif user_choice == "2" 
  prompt = "> " 
  puts "In what format would you like to view the students?"
  puts "Option 1 - all students alphabetically, Option 2 - November cohort?, Option 3 - September Cohort?\n> "
  list_format = gets.chomp
  implement_format_choice(list_format, current_students) #An example of method chaining   
  else
    puts "Mary, Mary quite contrary,\n
    How does your garden grow?\n
    With silver bells,\n
    And cockle shells,\n
    And pretty maids all in a row."
  end
end

def implement_format_choice(list_format, current_students)
    if list_format == "1"
    alphabetical_list(current_students)
    elsif list_format == "2"
    view_november(current_students)
    elsif list_format == "3"
    view_september(current_students)
    else 
    puts "Mary, Mary quite contrary,\nHow does your garden grow?\nWith silver bells,\nAnd cockle shells,\nAnd pretty maids all in a row."
  end
end 

#Order script
menu_options
puts prompt_user_choice
user_choice = gets.chomp
implement_user_choice(user_choice, current_students)






















