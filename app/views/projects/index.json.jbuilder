json.array!(@projects) do |project|
  json.extract! project, :id, :region, :country, :project_type, :organization_name, :leader_name, :organization_type, :address, :organization_id, :description, :impact_people, :technical_assistance, :amount, :raised
  json.url project_url(project, format: :json)
end
