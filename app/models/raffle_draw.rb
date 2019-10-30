class RaffleDraw < ApplicationRecord
  has_many :sign_ups, dependent: :destroy
end
