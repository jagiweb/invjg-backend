class Company < ApplicationRecord
  belongs_to :admin

  validates :name, presence: true
end
