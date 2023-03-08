class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students_by_grade = Student.all.order(:grade).reverse
        render json: students_by_grade
    end

    def highest_grade
        student = Student.all.order(:grade).reverse.first
        render json: student
    end
end
