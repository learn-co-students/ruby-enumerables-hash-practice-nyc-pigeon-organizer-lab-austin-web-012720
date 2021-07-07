def nyc_pigeon_organizer(data)
  
  # Creates the new hash and populates with name keys
  
    pigeon_list = {}
    data[:gender].each_pair { | k, v |
      v.map { |name| pigeon_list[name] = {
        :color => [],
        :gender => [],
        :lives => []
      }
    }
  }
  
  # iterates through data and extracts attributes, addng them to new hash.
  
  data.each_key { | key | 
    data[key].each_pair { | k,v| 
    v.each { |name| pigeon_list[name][key].push(k.to_s)
      }
    }
  }

  
  return pigeon_list
end
