# Seed Barbecues
10.times do
  title = [ "#{Faker::Team.name} victory BBQ", "#{Faker::Name.name} Birthday BBQ" ].sample
  venue = [ Faker::Address.city, Faker::Company.name ].sample

  puts "Creating #{title} at #{venue}"
  Barbecue.create(date: Faker::Date.forward(23), title: title, venue: venue)
end

User.create([
	{name: 'Rachel', email: 'rachel@ra.com', password: '12345678', password_confirmation:'12345678'},
	{name: 'Ruben', email: 'ruben@ru.com', password: '12345678', password_confirmation:'12345678'},
	{name: 'Marta', email: 'marta@ma.com', password: '12345678', password_confirmation:'12345678'}
	])