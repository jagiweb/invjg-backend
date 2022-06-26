class Admin < ApplicationRecord
    has_many :companies
    has_secure_password
end
