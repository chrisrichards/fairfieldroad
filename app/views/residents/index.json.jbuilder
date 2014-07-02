json.array!(@residents) do |resident|
  json.extract! resident, :id, :house_number, :road, :email_address
  json.url resident_url(resident, format: :json)
end
