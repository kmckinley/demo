class SayController < ApplicationController
  def hello
  	@time = Time.now
  	@files = Dir.glob('*')
  	
  	if @time.wday == 0
  		@day_of_week = "Sunday"
  	elsif @time.wday == 1
  		@day_of_week = "Monday"
  	elsif @time.wday == 2
  		@day_of_week = "Tuesday"
  	elsif @time.wday == 3
  		@day_of_week = "Wednesday"
  	elsif @time.wday == 4
  		@day_of_week = "Thrusday"
  	elsif @time.wday == 5
  		@day_of_week = "Friday"
  	elsif @time.wday == 6
  		@day_of_week = "Saturday"
  	end

  	@day_of_week = @day_of_week + " " + @time.month.to_s + "/" + @time.day.to_s + "/" + @time.year.to_s

  end

  def goodbye
  end
end
