class Book < ActiveRecord::Base
  belongs_to :category
  belongs_to :author

  has_many :checkouts
  has_many :users, through: :checkouts
end
