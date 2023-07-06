FactoryBot.define do
    factory :movie do
      name {Faker::Movie.title}
      description {Faker::Movie.quote}
      rating {rand(5..10)}
      genre {'Action'}
      language {'Hindi'}
      director {Faker::Name.unique.name}
      release_date {Faker::Date.between(from: 1.year.ago, to: Date.today)}
      run_time {rand(3..5)}
    end
  end
  
