json.extract! work, :id, :company_name, :job, :start_year, :finish_year, :created_at, :updated_at
json.url admin_work_url(work, format: :json)
