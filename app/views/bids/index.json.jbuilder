json.array!(@bids) do |bid|
  json.extract! bid, :id, :team_id, :project_id, :bid_text
  json.url bid_url(bid, format: :json)
end
