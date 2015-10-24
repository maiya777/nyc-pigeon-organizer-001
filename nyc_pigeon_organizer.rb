def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each {|attribute, value|
    value.each {|key, names|
      names.each { |name| if pigeon_list.has_key?(name)
        if pigeon_list[name].has_key?(attribute)
          pigeon_list[name][attribute] << key.to_s
        else pigeon_list[name][attribute] = [key.to_s]
        end
      else pigeon_list[name] = {attribute => [key.to_s]}
        end
        }
      }
    }
pigeon_list# write your code here!
end


