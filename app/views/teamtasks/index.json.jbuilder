json.array!(@teamtasks) do |teamtask|
  json.extract! teamtask, :id, :name, :type, :dateline, :timeline, :taskable_id, :taskable_type, :description
  json.url teamtask_url(teamtask, format: :json)
end
