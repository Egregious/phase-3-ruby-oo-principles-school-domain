# code here!
class School

    attr_accessor :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_students = {}

        roster.each {|grade, students| sorted_students[grade] = students.sort}

        sorted_students
    end

end