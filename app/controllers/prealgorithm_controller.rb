class PrealgorithmController < ApplicationController
    

    def check
        @days_of_the_week = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']
        @number_failed_messages = 0
        @failed_messages = []
        @days_of_the_week.each do |i|
            @store_employee_ids = []
            @number_of_employees = 0
            @number_of_needed_employees = 0
            @number_of_employees_at_postition = 0
            @number_of_needed_employees_at_postition = 0

            #Get all employees who work i
            #@store_employee_ids = Employee.find_by_sql(SELECT id FROM employees WHERE workday = i)

            @hour =0
            while @hour < 24
                if @number_of_employees < @number_of_needed_employees
                    @number_failed_messages +=1
                elseif @number_of_employees_at_postition < @number_of_needed_employees_at_postition
                    @number_failed_messages +=1
                end                
                @hour += 1
            end
        end
    end

    private
=begin
    def search_employees_day(day_to_search_for)
        Employee.find_each do |employee|

    end

    def search_employees_position
    end
=end
end
