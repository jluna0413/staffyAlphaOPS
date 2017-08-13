json.extract! job, :id, :name, :location, :start_time, :end_time, :description, :requirements, :attire, :client_id, :created_at, :updated_at
json.url job_url(job, format: :json)
