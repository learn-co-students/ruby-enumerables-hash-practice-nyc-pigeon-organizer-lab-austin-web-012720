def nyc_pigeon_organizer(pigeons_in)
    pigeons_out = {}
    pigeons_in.each do |attribute_name, attribute_assignments|
        attribute_assignments.each do |attribute_value, pigeon_names|
            pigeon_names.each do |pigeon_name|
                if !pigeons_out.key?(pigeon_name) then
                    pigeons_out[pigeon_name] = {}
                end
                if !pigeons_out[pigeon_name].key?(attribute_name) then
                    pigeons_out[pigeon_name][attribute_name] = []
                end
                pigeons_out[pigeon_name][attribute_name] << attribute_value.to_s
            end
        end
    end
    return pigeons_out
end
