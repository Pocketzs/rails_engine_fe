class ItemService
  def self.find_item_data_by_id(id)
    response = conn.get("items/#{id}")
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