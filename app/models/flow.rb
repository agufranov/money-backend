class Flow < ActiveRecord::Base
  belongs_to :type
  belongs_to :from, class_name: "Wallet", inverse_of: :flows_from
  belongs_to :to, class_name: "Wallet", inverse_of: :flows_to
end
