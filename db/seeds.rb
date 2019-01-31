require 'faker'


10.times do |index|
	dog_sitter = DogSitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

10.times do |index|
	dog = Dog.create!(name: Faker::Pokemon.unique.name)
end	

10.times do |index|
	stroll = Stroll.create!(dog_sitter_id: (rand(DogSitter.first.id..DogSitter.last.id)), dog_id:(rand(Dog.first.id..Dog.last.id)), date: Faker::Date.forward(23))
end

	