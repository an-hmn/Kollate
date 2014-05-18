json.array!(@moodboards) do |moodboard|
  json.extract! moodboard, :id
  json.url moodboard_url(moodboard, format: :json)
end
