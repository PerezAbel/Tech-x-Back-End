class User < ApplicationRecord
    has_secure_password
    validates :username,:email, presence: true
    validates :email, uniqueness: true
    validates :password, length: { minimum: 4 }
end

