@students = []

def input_students
  puts "Please enter the name of your first student."
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

    @students << {name: name, cohort: cohort, dob: date, hobby: hobbies, heights: height}
    puts "Now we have #{@students.count} student"
    puts "Do you want to add any more students?"
    puts "if not, please hit return twice"
    name = gets.chomp
  end
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def interactive_menu
loop do
print_menu
process(gets.chomp)
end
end

 def process(selection)
 case selection
 when "1"
 input_students
 when "2"
 show_students
 when "3"
   save_students
 when "9"
 exit
 else
 puts "I don\'t have that option i\'m afraid"
 end
end


def print_menu
  puts "please chose a number from the list below"
  puts "1. Input students"
  puts "2. Show the students"
  puts "3. Save the list of students to students.csv"
  puts "9. Exit menu"
end

def print_header
puts "The students of Villains Academy".center(60)
puts "________".center(60)
end

def print_student_list
index = 0
while index < @students.length
  student = @students[index]
     puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)".center(60)
index = index + 1
end
end

def print_footer
if @students.count == 1
  puts  "Overall, we have #{@students.count} great student".center(60)
else
  puts "Overall, we have #{@students.count} great students".center(60)
end
end

def show_students
  print_header
  print_student_list
  print_footer
end


interactive_menu
