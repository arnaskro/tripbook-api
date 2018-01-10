2000.times do |i|
    Booking.create(
        trip_id: Trip.all.sample.id,
        user_id: User.all.sample.id,
        local_id: Local.where(available: true).sample.id,
        number_of_people: rand(1..2),
        status: rand(0..2),
        from_date: DateTime.now - (rand * 250) + (rand * 50),
        to_date: DateTime.now + (rand * 60) - (rand * 250)
    )
end