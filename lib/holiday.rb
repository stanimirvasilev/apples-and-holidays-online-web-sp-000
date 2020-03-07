require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]

end 
  
  
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array






def add_supply_to_winter_holidays(holiday_supplies, supply)
 holiday_supplies[:winter][:christmas] << supply
 holiday_supplies[:winter][:new_years] << supply
 
end  
    

  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays




def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash[:spring][:memorial_day] << supply
  
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
 

  # code here
  # remember to return the updated hash
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
    holiday_hash.each do |season, holidays|
   
    puts "#{season.to_s.capitalize}:" 
      holidays.each do |holiday, supplies|
        
      #inding.pry
      
      holiday_string = holiday.to_s.split("_").each { |word| word.capitalize! }.join(" ")
        
        
        
        puts "  #{holiday_string}: #{supplies.join(", ")}"
  
      end
   end
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
 
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday_second, value|
      if value.include?("BBQ")
        new_array = []
        new_array << holiday_second
    #binding.pry
       new_array
      end
    end
 end
 
end
  
  
  
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"








