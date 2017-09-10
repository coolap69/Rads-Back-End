class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :description, :title, :date_time, :service_id
end
