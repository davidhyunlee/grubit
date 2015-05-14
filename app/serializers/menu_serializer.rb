class MenuSerializer < ActiveModel::Serializer
  attributes :name, :restaurant_name, :business_name
  has_many :menu_item_categories

  def business_name
    @business = Business.find(@object.business_id)
    return @business.name
  end

end
