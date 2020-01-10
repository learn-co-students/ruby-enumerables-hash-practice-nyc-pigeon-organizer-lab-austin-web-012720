require 'pry'

def set_name_keys (data)
  new_hash = {}
  data.each do |first_keys, data_hash|
    data_hash.each do |attributes, array|
        array.each do |name|
          if !new_hash.has_key?(name)
            new_hash[name] = {}
          end
        end
      end
    end
new_hash
end

def set_attributes_keys(data, new_hash)
  data.each do |first_keys, data_hash|
        data_hash.each do |attributes, array|
                      array.each do |name|
                                if !new_hash.has_key?(attributes)
                                  new_hash[name][first_keys] = []
                                end
                                end
                      end
            end
new_hash
end


def set_values(data, new_hash)
  data.each do |first_keys, data_hash|
    data_hash.each do |attributes, array|
      array.each do |name|
        if !array.include?(new_hash[name])
          new_hash[name][first_keys] << "#{attributes}"
        end
                 end
                   end
            end
new_hash
end


def nyc_pigeon_organizer(data)
  named_hash = set_name_keys(data)
  colored_hash = set_attributes_keys(data, named_hash)
  final_hash = set_values(data, colored_hash)
  final_hash
end
