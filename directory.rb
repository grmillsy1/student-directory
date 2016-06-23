


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} student"
    name = gets.chomp
  end
  students
end

def print_header
puts "The students of Villains Academy"
puts "________"
end

def print_names(students)
index = 0 
while index < students.length
  student = students[index]
     puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
index = index + 1
  end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print_names(students)
print_footer(students)
