json.array!(@customers) do |customer|
  json.extract! customer, :first_name, :last_name, :suburb
  json.url customer_url(customer, format: :json)
end
