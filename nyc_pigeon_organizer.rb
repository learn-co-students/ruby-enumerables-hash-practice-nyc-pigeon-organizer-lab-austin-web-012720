def nyc_pigeon_organizer(data)
  
  new_hash = {}
  data.each { |prop, hash| 
    hash.each { |attribute, array| 
      array.each { |name| 
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end
        
        if !new_hash[name].has_key?(prop)
          new_hash[name][prop] = []
        end
        
        if !new_hash[name][prop].include?(attribute)
          new_hash[name][prop] << attribute.to_s
        end
      }
    }
  }
  
  new_hash
  
  
end
