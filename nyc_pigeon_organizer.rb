require 'pry'


def nyc_pigeon_organizer(data)
  new_pigeon_data = {}
  
  data.each do |outside, inside|
    inside.each do |attributes, names|
      names.each do |bird|
        
        if !new_pigeon_data[bird]
          new_pigeon_data[bird] = {}
        end
        
        if !new_pigeon_data[bird][outside]
          new_pigeon_data[bird][outside] = []
        end
        
        if new_pigeon_data[bird][outside] != attributes
          new_pigeon_data[bird][outside] << attributes.to_s
        end
      end
    end
  end 
  new_pigeon_data
  #binding.pry
end
