json.extract! project, :id, :name, :description, :project_url, :created_at, :updated_at
json.url project_url(project, format: :json)
