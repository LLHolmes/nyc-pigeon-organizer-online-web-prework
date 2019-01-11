def nyc_pigeon_organizer(data)
  organized = {}
  data.each do |key, options|
    options.each do |type, pigeon|
      pigeon.each do |name|
        if organized.keys.include?(name)
          if organized[name].keys.include?(key)
            organized[name][key] << type.to_s
          else
            organized[name][key] = [type.to_s]
          end
        else
          organized[name] = { key => [type.to_s] }
        end
      end
    end
  end
end