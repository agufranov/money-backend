class Wallet < ActiveRecord::Base
  belongs_to :user
  has_many :flows_from, foreign_key: :from_id, class_name: "Flow", inverse_of: :from
  has_many :flows_to, foreign_key: :to_id, class_name: "Flow", inverse_of: :to
end
