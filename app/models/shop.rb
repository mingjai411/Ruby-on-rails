class Shop
  include Mongoid::Document
  belongs_to :user

  field :shop_name, type: String
end
