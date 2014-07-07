json.array!(@completed_assignments) do |completed_assignment|
  json.extract! completed_assignment, :id, :user_id, :assignment_id, :on_time, :github_url
  json.url completed_assignment_url(completed_assignment, format: :json)
end
