json.extract! transaction, :id, :date, :member_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
