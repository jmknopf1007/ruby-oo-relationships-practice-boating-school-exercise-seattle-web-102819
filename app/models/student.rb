class Student

    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor)
        #binding.pry
        BoatingTest.new(self, test_name, status, instructor)
    end


    def self.find_student(first_name)  
        @@all.find do |student|
            student.first_name == first_name 
        end
    end

    # iterate through every student
    # get their test status
    # should return the percentage of tests that the student has passed, a Float 
    # (so if a student has passed 3 / 9 tests that they've taken, this method should 
    # return the Float `33.33`)

    def grade_percentage
        my_test = BoatingTest.all.select do |test|
            test.student == self 
        end 
        passed_test = my_test.select do |test|
            test.status == "passed" 
        end
        passed_test.count.to_f / my_test.count
        #binding.pry   
    end



end
