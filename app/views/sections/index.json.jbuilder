json.array!(@sections) do |section|
  json.extract! section, :id, :project_id, :user_id, :header, :description
  json.url section_url(section, format: :json)
end
