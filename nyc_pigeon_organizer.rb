require 'pp'
require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  # pp data
  result = {}

  data.each do |first_key, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !result.has_key?(name)
          result[name] = {}
        end
        if !result[name].has_key?(first_key)
          result[name][first_key] = []
        end
        if !result[name][first_key].include?(attribute)
          result[name][first_key] << "#{attribute}"
        end
      end
    end
  end
  # data.each do |first_key, sub_keys|
  #   sub_keys.each do |attributes, array|
  #     array.each do |name|
  #       result[name] = {
  #         color: [],
  #         gender: [],
  #         lives: []
  #       }
  #     end
  #   end
  # end
result




end
