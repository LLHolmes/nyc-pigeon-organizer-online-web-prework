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
  organized
end

=begin
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(data)
=end