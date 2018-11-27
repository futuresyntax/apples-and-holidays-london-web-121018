require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end
# holiday_supplies = {
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

  #second two lines are how to write the code seperately, bottom is using .each
  # holiday_supplies[:winter][:christmas] << supply
  # holiday_supplies[:winter][:new_years] << supply
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
def add_supply_to_winter_holidays(holiday, supply)
  holiday_supplies[:winter].each do |holiday, supply_array|
  	supply_array << supply
  end
end



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array #inserting key value pairs using variables
  holiday_hash #returning entire hash
end


  # code here
  # remember to return the updated hash


# def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
#   holiday_hash[season][holiday_name] = supply_array //inserting key value pairs using variables
#   holiday_hash //returning entire hash
# end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies[:winter][:christmas] << "Party Hats"
  holiday_supplies[:winter][:christmas]
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |key, value |

    puts "#{key.capitalize}:"

    value.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map{|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end

  end



  # split.capitalize!
  # holiday_hash.join
  # holiday_hash


  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

# def all_holidays_with_bbq(holiday_hash)
#   holiday_hash.each do |holiday, supplies|
#
#       if supplies == "BBQ"
#         puts holiday

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  def all_holidays_with_bbq(holiday_hash)
    holiday_hash.map do |season, holidays_data|
        holidays_data.map do |holiday, supplies|
          supplies.map do |supply|
            if supply == "BBQ"
               holiday
            end

          end
      end
    end
  end


# a.collect {|s| s.compact}
#Method one: save the holidays in a separate variable and return that variable
#Method two: research ruby methods to get rid of nil values in arrays, and combines nested arrays
