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

test_data = {
  :color => {
    :blue => ["Anson", "Archie"],
    :green => ["Reva", "Reva"]
  }
}


def nyc_pigeon_organizer(data)
  binding.pry
  names = []
  data.each do |x|
    data[x].each do |y|
      names << data[x][y].uniq
    end
  end
end

binding.pry
