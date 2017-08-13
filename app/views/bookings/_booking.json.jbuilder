json.extract! booking, :id, :isfullfilled, :job_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
