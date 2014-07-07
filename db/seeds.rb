
# users
# assignments

User.destroy_all
Assignment.destroy_all
CompletedAssignment.destroy_all

names = %w(sean adrianne nandita eric david kevin ayaz alex)
names.each do |name|
  User.create name: name
end

week1 = Assignment.create title: "Create a Concert", description: "Oh hai there", assigned: "2014-06-12", due_date: "2014-06-16"
week2 = Assignment.create title: "Create a blackjack game", description: "DUECES Oh hai there", assigned: "2014-06-19", due_date: "2014-06-23"
week3 = Assignment.create title: "Data Modeling in Rails", description: "TRES Oh hai there", assigned: "2014-06-26", due_date: "2014-06-30"


[week1, week2, week3].each do |assignment|
  User.all.each do |user|
      user.completed_assignments.create(assignment: assignment,
                                           on_time: [true,false].sample,
                                           github_url: "the-url")

  end
end

# CompletedAssignment.create user: nandita,
#                            assignment: week2,
#                            on_time: true,
#                            github_url: "https://github.com/tiy-houston-q3-rails/day-9/issues/3"
