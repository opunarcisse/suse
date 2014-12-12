json.array!(@teams) do |team|
  json.extract! team, :id, :name_of_team, :type_of_team, :number_of_members, :description
  json.url team_url(team, format: :json)
end
