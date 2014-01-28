json.array!(@datafiles) do |datafile|
  json.extract! datafile, :id, :name, :directory, :path
  json.url datafile_url(datafile, format: :json)
end
