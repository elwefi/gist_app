json.array!(@file_lists) do |file_list|
  json.extract! file_list, :id, :name, :content, :gist_id
  json.url file_list_url(file_list, format: :json)
end
