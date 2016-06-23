


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp.capital
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
  students.each.with_index(1) do |student, index|
     if student[:name][0] == "G"
     puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print_names(students)
print_footer(students)
