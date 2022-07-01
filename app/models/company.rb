class Company < ApplicationRecord
  belongs_to :admin
  has_many :distributors

  validates :name, presence: true
end
