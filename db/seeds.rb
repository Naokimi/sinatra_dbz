require 'faker'

p 'creating empty characters'

5.times do
  Character.create(
    name: Faker::JapaneseMedia::DragonBall.character,
    user: Faker::Name.first_name,
    team: 'A'
  )
end

5.times do
  Character.create(
    name: Faker::JapaneseMedia::DragonBall.character,
    user: Faker::Name.first_name,
    team: 'B'
  )
end
