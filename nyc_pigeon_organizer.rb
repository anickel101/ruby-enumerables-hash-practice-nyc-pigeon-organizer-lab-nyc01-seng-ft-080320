require "pry"

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


def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value), name_hash|
    value.each do |inner_key, names|
      names.each do |name|
        if !name_hash[name]
          name_hash[name] = {}
        end
        if !name_hash[name][key]
          name_hash[name][key] = []
        end
        name_hash[name][key].push(inner_key.to_s)
      end
    end
  end
end

binding.pry
