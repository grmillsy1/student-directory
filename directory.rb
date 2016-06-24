


def input_students
  puts "Please enter the name of your first student."

  students = []
  name = gets.chomp.capitalize!
  while !name.empty? do
    puts "Great, thanks! What cohort (month) will #{name} be entering?"
    cohort = gets.chomp.gsub(/\s+/,"_").capitalize.to_sym
      if cohort.empty?
        cohort = :November
      end
    puts "and what date was #{name} born (DD/MM/YY)?"
    date = gets.chomp
    puts "Thanks! Do you know if #{name} had any hobbies?"
    hobbies = gets.chomp
    puts "what about #{name}\'s height?"
    height = gets.chomp

    students << {name: name, cohort: cohort, dob: date, hobby: hobbies, heights: height}
    puts "Now we have #{students.count} student"
    puts "Do you want to add any more students?"
    puts "if not, please hit return twice"
    name = gets.chomp
  end
  students
end

def print_header
puts "The students of Villains Academy".center(60)
puts "________".center(60)
end

def print_names(students)
index = 0
while index < students.length
  student = students[index]
     puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)".center(60)
index = index + 1
  end
end

def print_footer(students)
if students.count == 1
  puts  "Overall, we have #{students.count} great student".center(60)
else
  puts "Overall, we have #{students.count} great students".center(60)
end
end

students = input_students
print_header
print_names(students)
print_footer(students)
