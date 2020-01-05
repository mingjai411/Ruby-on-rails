class Shop
  include Mongoid::Document
  belongs_to :user

  field :shop_name, type: String

  validates_presence_of :shop_name
end
