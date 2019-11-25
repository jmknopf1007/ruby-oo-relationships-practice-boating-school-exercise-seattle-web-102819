require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new("Spongebob") 
s2= Student.new("Patrick")
s3= Student.new("Jacob")


i1 = Instructor.new("Ms.Puff")
i2 = Instructor.new("Mr.Krabs")

t1 = BoatingTest.new(s1, "Don't Crash 101", "passed", i1)
t2 = BoatingTest.new(s2, "Power Steering 201", "passed", i1)  
t3 = BoatingTest.new(s3, "Power Steering 201", "passed", i2)
t4 = BoatingTest.new(s1, "Power Steering 201", "passed", i2) 
t5 = BoatingTest.new(s2, "Power Steering 201", "pending", i2)
t6 = BoatingTest.new(s2, "Don't Crash 101", "passed", i1)
t7 = BoatingTest.new(s1, "Don't Crash 101", "failed", i2) 
t8 = BoatingTest.new(s3, "Don't Crash 101", "failed", i2)      

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

