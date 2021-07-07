require 'pp'

def nyc_pigeon_organizer(data)
  pigeon_names = data[:gender][:male] | data[:gender][:female]
  
  pigeons = {}
  color = []
  
  for each in pigeon_names
    pigeon_color = []
    pigeons[each] = {}
    
    colors = data[:color].keys
    for color in colors
      if data[:color][color].include?(each)
        pigeon_color.push(color.to_s)
      end
    end
    pigeons[each][:color] = pigeon_color
    
    homes = data[:lives].keys
    for place in homes
      if data[:lives][place].include?(each)
        pigeons[each][:lives] = [place]
      end
    end
    
    if data[:gender][:male].include?(each)
      pigeons[each][:gender] = ["male"]
    else 
      pigeons[each][:gender] = ["female"]
    end 
  end
  
  pp pigeons
  
  return pigeons
end
