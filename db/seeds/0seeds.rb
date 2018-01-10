
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

# Define capital city id
Country.all.select{ |x| City.where(name: x.capital).length > 0 }.each{ |x| x.update(capital_city_id:City.where(name: x.capital).first.id) }