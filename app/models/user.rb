class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
    has_secure_password
    has_many :blogs
end
