json.array!(@join_team_contracts) do |join_team_contract|
  json.extract! join_team_contract, :id, :team_id, :student_id, :team_accepted, :student_accepted
  json.url join_team_contract_url(join_team_contract, format: :json)
end
