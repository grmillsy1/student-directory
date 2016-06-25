

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

def interactive_menu

#create an empty array
students = []

loop do #to create a loop
#1.Print the menu and ask the user what they want to do

puts "please chose a number from the list below"
puts "1. Input students"
puts "2. Show the students"
puts "9. Exit menu"

#2. read the input and save it
selection = gets.chomp

 #do what the user has asked

 case selection
 when "1"
 students = input_students
 when "2"
 print_header
 print(students)
 print_footer(students)
 when "9"
 exit
 else
 puts "I don\'t have that option i\'m afraid"
 end
end
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

interactive_menu
