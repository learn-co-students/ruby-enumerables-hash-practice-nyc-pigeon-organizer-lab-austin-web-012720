def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |first_order_keys, value|
    value.each do |second_order_keys, array|
      array.each do |name|
        if pigeon_list [name] == nil
          pigeon_list [name] = {}
        end
      end
      
      if pigeon_list[name][first_order_keys] == nil
        pigeon_list[name][first_order_keys] = []
      end
      
      pigeon_list[name][first_order_keys].push(second_order_keys.to_s)
    end