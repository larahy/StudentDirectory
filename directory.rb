def save_students(data_for_saving)
  file = File.open("students.csv", "a")
  data_for_saving.each do |student|
    student_data = [student[:first_name], student[:last_name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

#Method sorts students alphabetically and prints to screen
def alphabetical_list(students)
  sorted_array = students.sort_by {|person| person[:last_name].downcase}
  sorted_array.each do |student|
  # puts "#{student[:first_name]} #{student[:last_name]} -- #{student[:cohort]}"
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
    if student[:cohort] == :September
      puts "#{student[:first_name]} #{student[:last_name]} -- #{student[:cohort]}"
    end
  end
end


def input_students(current_students)
  print "Please enter the first name of the student you wish to add?\n"
  first_name = gets.chomp
  print "Please enter the last name of the student you wish to add?\n"
  last_name = gets.chomp
  print "Please enter the cohort of this student?\n"
  cohort = gets.chomp
  current_students << {:first_name => first_name, :last_name => last_name, :cohort => cohort}
end
#Method prints options to screen
def menu_options
  puts "Good morning, you have two options; you can either"
  puts "1. Add students to the directory\n 2. View a list of students enrolled at Makers Academy\n 3. Save the list of students to a file\n 9. Exit the programme."
  puts "Please type the option you would like?"
end

def implement_user_choice(user_choice, current_students)
  if user_choice == "1"
  current_students = input_students(current_students)
  elsif user_choice == "2" 
  prompt = "> " 
  puts "In what format would you like to view the students?"
  puts "Option 1 - all students alphabetically, Option 2 - November cohort?, Option 3 - September Cohort?\n> "
  list_format = gets.chomp
  implement_format_choice(list_format, current_students) #An example of method chaining   
  elsif user_choice == "3"
    save_students(current_students)
  elsif user_choice =="9"
    exit
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
    puts "Mary, Mary quite contrary,\n
    How does your garden grow?\n
    With silver bells,\n
    And cockle shells,\n
    And pretty maids all in a row."
  end
end 

#Order script
def interactive_menu(students)
  loop do 
    menu_options
    user_choice = gets.chomp
    implement_user_choice(user_choice, students)
  end
end
current_students = []
interactive_menu(current_students)