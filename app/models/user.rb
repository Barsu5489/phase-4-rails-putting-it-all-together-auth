class User < ApplicationRecord
    has_many :recipes
    has_secure_password
    validates :username, presence: true, uniquness: true 
    validates :instructions, presence: true, length: {minimum: 50}
end
