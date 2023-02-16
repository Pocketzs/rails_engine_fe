class ItemFacade
  def self.find_by_id(id)
    data = ItemService.find_item_data_by_id(id)[:data]
    Item.new(data)
  end
end