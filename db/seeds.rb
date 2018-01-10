# Loads custom seeds
Dir[File.join(Rails.root, 'db', 'seeds_fake_data', '*.rb')].sort.each { |seed| load seed }