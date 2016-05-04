json.array!(@gists) do |gist|
  json.extract! gist, :id, :description, :is_public, :user_id
  json.url gist_url(gist, format: :json)
end
