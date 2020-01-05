class User
  include Mongoid::Document

  field :first_name, type: String
  field :last_name, type: String
  field :ages, type: Integer
  field :gender, type: String
  field :address, type: Hash

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates :ages, :numericality => { only_integer: true, :greater_than_or_equal_to => 0 }
  validates_inclusion_of :gender, in: ["male", "female", "other"]
end
