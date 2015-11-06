json.array!(@calls) do |call|
  json.extract! call, :id, :title, :organization, :description, :qualifications, :compensation, :url, :contact, :deadline
  json.url call_url(call, format: :json)
end
