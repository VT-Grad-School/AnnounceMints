json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :hirer, :compensation_type, :description, :deadline, :url, :contact, :qualifications, :start_date, :duration
  json.url job_url(job, format: :json)
end
