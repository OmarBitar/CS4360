json.extract! employee, :id, :firstname, :lastname, :active, :availability, :created_at, :updated_at
json.url employee_url(employee, format: :json)
