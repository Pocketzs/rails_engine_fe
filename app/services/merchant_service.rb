class MerchantService
  def self.all_merchants_data
    response = conn.get("merchants")
    body = parse_body(response)
  end

  def self.all_item_data_for_merchant(merchant_id)
    response = conn.get("merchants/#{merchant_id}/items")
    body = parse_body(response)
  end

  def self.conn
    Faraday.new(
      url: 'http://localhost:3000/api/v1/'
    )
  end

  def self.parse_body(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end