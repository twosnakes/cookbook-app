class Recipe < ApplicationRecord
  def ingredient_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_prep_time
    updated_at.strftime('%b %d, %Y')
  end
    
   hours = prep_time / 60
   minutes = prep_time % 60
   time_message = ""
   if hours >
   time_message =+ "#{hours} #{"Hour".pluralize(hours)}" if hours > 0
   time_message += ", " if hours > 0 && minutes > 0
   time_meesage =+ "#{minutes} #{"Minute".pluralize(minutes)}" if minutes > 0
   time_message
 end
end
