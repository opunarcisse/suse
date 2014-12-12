json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :type, :dateline, :timeline, :taskable_id, :taskable_type, :description
  json.url task_url(task, format: :json)
end
