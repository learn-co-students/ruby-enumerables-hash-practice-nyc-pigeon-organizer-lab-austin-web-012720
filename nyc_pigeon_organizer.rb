def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |first_key, value|
    
    value.each do |second_key, array|
      
      array.each do |pigeon_name|
        if pigeon_list[pigeon_name] == nil 
          pigeon_list[pigeon_name] = {}
        end
        
        if pigeon_list[pigeon_name][first_key] == nil 
          pigeon_list[pigeon_name][first_key] = []
        end
        
        pigeon_list[pigeon_name][first_key].push(second_key.to_s)
      end
      
    end
    
  end
  
  pigeon_list
  
end
