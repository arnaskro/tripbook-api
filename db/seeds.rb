# Loads custom seeds
Dir[File.join(Rails.root, 'db', 'seeds_fake_data', '*.rb')].sort.each { |seed| load seed }


# Dir[File.join(Rails.root, 'db', 'seeds_fake_data', '0user_1_seeds.rb')].sort.each { |seed| load seed }
