# Methods/Variables

def input_students
  puts "Please enter the name of the students"
  puts "To finish, just put return twice"
  # Create an empty array
  students = []
  # get the first names
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name for the user
    name = gets.chomp
    end
    # return the array of input_students
    students
  end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def print(students)
  students.each_with_index{|student, i|
    puts "#{i+1} : #{student[:name]} (#{student[:cohort]} cohort)"}
end

# Output

students = input_students
print_header
print(students)
print_footer(students)
