def nyc_pigeon_organizer(data)
  
  pigeon_data ={}
  
  data.each do |key,value| #first iteration
    value.each do |attribute, pigeons_names| #second iteration
      
      pigeons_names.each do |name| #get names
      
      if pigeon_data.has_key?(name) #check if new hash has the name already
        
        if pigeon_data[name].has_key?(key) # if name, see if it has key
        
          pigeon_data[name][key] << attribute.to_s #if it has name and key, assign value (brown, new york etc)
        else
          pigeon_data[name][key]=[attribute.to_s] # if no key, assign key and value
        end
        
        else
        pigeon_data[name]={key=>[attribute.to_s]} # if no name, assign name and key and value, basically flipping data
        end
        
      end
      
     end
   
   end
  
pigeon_data
end
