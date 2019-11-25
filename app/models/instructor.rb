class Instructor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        pass_test = BoatingTest.all.find do |test|
            test.student == student && test.test_name == test_name 
            if pass_test
                pass_test.status = "passed"
            else
                BoatingTest.new(student, test_name, "passed", self) 
            end
        end
    end
    
    def fail_student(student, test_name)
        fail_test = BoatingTest.all.find do |test|
            test.student == student && test.test_name == test_name
            if fail_test
                fail_test.status == "failed"
            else
                BoatingTest.new(student, test_name, "failed", self)
            end
        end
    end

end
