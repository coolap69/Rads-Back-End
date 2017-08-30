class Service < ApplicationRecord
  has_many:users, through: :post
  has_many:post
end
