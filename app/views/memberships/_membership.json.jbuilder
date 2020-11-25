json.extract! membership, :id, :m_id, :m_name, :price, :created_at, :updated_at
json.url membership_url(membership, format: :json)
