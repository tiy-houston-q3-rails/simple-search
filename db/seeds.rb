
# users
# assignments

User.destroy_all
Assignment.destroy_all
CompletedAssignment.destroy_all

names = %w(sean adrianne nandita eric david kevin ayaz alex)
names.each do |name|
  User.create name: name
end

week1 = Assignment.create title: "Week 1", description: "Oh hai there", assigned: 3.weeks.ago, due_date: 2.weeks.ago
week2 = Assignment.create title: "Week 2", description: "DUECES Oh hai there", assigned: 2.weeks.ago, due_date: 1.weeks.ago
week3 = Assignment.create title: "Week 3", description: "TRES Oh hai there", assigned: 5.days.ago, due_date: 23.hours.from_now


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
