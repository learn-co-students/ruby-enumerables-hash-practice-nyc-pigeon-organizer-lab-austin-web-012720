def nyc_pigeon_organizer(data)
    #pp data
    h = {}
    data.each do |arr|
      
        att = arr[0]
        vals = arr[1] 
        vals.each_key do |key|
            names = vals[key]
            names.each do |name|
                if h.include?(name) == false
                    h[name] = {}
                end
                if h[name].include?(att) == false
                    h[name][att] = []
                end
                 
                if h.include?(name)  && h[name].include?(att)
                    h[name][att].push(key.to_s)
                end
                
            end
        end
    
    end
  return h
end
