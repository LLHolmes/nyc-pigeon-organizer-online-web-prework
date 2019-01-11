def nyc_pigeon_organizer(data)
  organized = {}
  data.each do |key, options|
    options.each do |type, pigeon|
      pigeon.each do |name|
        if organized.keys.include?(name)
          if organized[name].keys.include?(key)
            
          else
            organized[name][key] = 
        else
          organized[name] = { key => type }
end