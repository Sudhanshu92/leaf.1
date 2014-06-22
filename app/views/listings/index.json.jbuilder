json.array!(@listings) do |listing|
  json.extract! listing, :id, :hospital_id, :title, :link, :description
  json.url listing_url(listing, format: :json)
end
