
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Kreuger",
"The Joker",
"Jeoffrey Baratheon",
"Norman Bates"
]

def print_header
puts "The students of Villains Academy"
puts "________"
end

def print(names)
names.each do |name|
  puts name
end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

print_header
print(students)
print_footer(students)
