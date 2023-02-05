#!/usr/bin/python
print("pr2gpa - calculate a GPA based on a grade as a percentage")
print("Written by John O'Hara\n")
print("Enter grade percentage as a decimal (0.0 - 100.0):", end=" ")

# read input
valid_input = False
grade = None

# assumes input can be parsed as a float
while valid_input == False:
  grade = float(input())
  valid_input = grade >= 0.0 and grade <= 100.0

  if valid_input == False:
    print("Grade must be between 0.0 and 100.0")

# does not check if input is within range, but assumes that it is safe from 
#  the restrictions at input
def percentage_to_gpa(percentage):
  if percentage >= 95.0:
    return 4.0
  elif percentage < 65.0:
    return 0.0
  else:
    return ((percentage - 65) / 10) + 1.0

def parse_gpa(gpa):
  return str(percentage_to_gpa(gpa))[:3]

# calculate and print GPA
print("GPA: {}".format(parse_gpa(grade)))
